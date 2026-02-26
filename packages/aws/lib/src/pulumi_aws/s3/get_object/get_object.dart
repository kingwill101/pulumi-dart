import 'package:pulumi/pulumi.dart';
import 'get_object_args.dart';
import 'get_object_result.dart';

/// The S3 object data source allows access to the metadata and
/// _optionally_ (see below) content of an object stored inside S3 bucket.
///
/// > **Note:** The content of an object (<span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> field) is available only for objects which have a human-readable `Content-Type`:
///
/// * `text/*`
/// * `application/json`
/// * `application/ld+json`
/// * `application/x-httpd-php`
/// * `application/xhtml+xml`
/// * `application/x-csh`
/// * `application/x-sh`
/// * `application/xml`
/// * `application/atom+xml`
/// * `application/x-sql`
/// * `application/yaml`
///
/// This is to prevent printing unsafe characters and potentially downloading large amount of data which would be thrown away in favor of metadata.
///
/// ## Example Usage
///
/// The following example retrieves a text object (which must have a `Content-Type`
/// value starting with `text/`) and uses it as the <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> for an EC2 instance:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bootstrapScript = aws.s3.getObject({
/// bucket: "ourcorp-deploy-config",
/// key: "ec2-bootstrap-script.sh",
/// });
/// const example = new aws.ec2.Instance("example", {
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// ami: "ami-2757f631",
/// userData: bootstrapScript.then(bootstrapScript => bootstrapScript.body),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bootstrap_script = aws.s3.get_object(bucket="ourcorp-deploy-config",
/// key="ec2-bootstrap-script.sh")
/// example = aws.ec2.Instance("example",
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// ami="ami-2757f631",
/// user_data=bootstrap_script.body)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bootstrapScript = Aws.S3.GetObject.Invoke(new()
/// {
/// Bucket = "ourcorp-deploy-config",
/// Key = "ec2-bootstrap-script.sh",
/// });
///
/// var example = new Aws.Ec2.Instance("example", new()
/// {
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// Ami = "ami-2757f631",
/// UserData = bootstrapScript.Apply(getObjectResult => getObjectResult.Body),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bootstrapScript, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// Bucket: "ourcorp-deploy-config",
/// Key:    "ec2-bootstrap-script.sh",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// Ami:          pulumi.String("ami-2757f631"),
/// UserData:     pulumi.String(bootstrapScript.Body),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var bootstrapScript = S3Functions.getObject(GetObjectArgs.builder()
/// .bucket("ourcorp-deploy-config")
/// .key("ec2-bootstrap-script.sh")
/// .build());
///
/// var example = new Instance("example", InstanceArgs.builder()
/// .instanceType("t2.micro")
/// .ami("ami-2757f631")
/// .userData(bootstrapScript.body())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Instance
/// properties:
/// instanceType: t2.micro
/// ami: ami-2757f631
/// userData: ${bootstrapScript.body}
/// variables:
/// bootstrapScript:
/// fn::invoke:
/// function: aws:s3:getObject
/// arguments:
/// bucket: ourcorp-deploy-config
/// key: ec2-bootstrap-script.sh
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following, more-complex example retrieves only the metadata for a zip
/// file stored in S3, which is then used to pass the most recent <span pulumi-lang-nodejs="`versionId`" pulumi-lang-dotnet="`VersionId`" pulumi-lang-go="`versionId`" pulumi-lang-python="`version_id`" pulumi-lang-yaml="`versionId`" pulumi-lang-java="`versionId`">`version_id`</span>
/// to AWS Lambda for use as a function implementation. More information about
/// Lambda functions is available in the documentation for
/// <span pulumi-lang-nodejs="`aws.lambda.Function`" pulumi-lang-dotnet="`aws.lambda.Function`" pulumi-lang-go="`lambda.Function`" pulumi-lang-python="`lambda.Function`" pulumi-lang-yaml="`aws.lambda.Function`" pulumi-lang-java="`aws.lambda.Function`">`aws.lambda.Function`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lambda = aws.s3.getObject({
/// bucket: "ourcorp-lambda-functions",
/// key: "hello-world.zip",
/// });
/// const testLambda = new aws.lambda.Function("test_lambda", {
/// s3Bucket: lambda.then(lambda => lambda.bucket),
/// s3Key: lambda.then(lambda => lambda.key),
/// s3ObjectVersion: lambda.then(lambda => lambda.versionId),
/// name: "lambda_function_name",
/// role: iamForLambda.arn,
/// handler: "exports.test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lambda_ = aws.s3.get_object(bucket="ourcorp-lambda-functions",
/// key="hello-world.zip")
/// test_lambda = aws.lambda_.Function("test_lambda",
/// s3_bucket=lambda_.bucket,
/// s3_key=lambda_.key,
/// s3_object_version=lambda_.version_id,
/// name="lambda_function_name",
/// role=iam_for_lambda["arn"],
/// handler="exports.test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lambda = Aws.S3.GetObject.Invoke(new()
/// {
/// Bucket = "ourcorp-lambda-functions",
/// Key = "hello-world.zip",
/// });
///
/// var testLambda = new Aws.Lambda.Function("test_lambda", new()
/// {
/// S3Bucket = lambda.Apply(getObjectResult => getObjectResult.Bucket),
/// S3Key = lambda.Apply(getObjectResult => getObjectResult.Key),
/// S3ObjectVersion = lambda.Apply(getObjectResult => getObjectResult.VersionId),
/// Name = "lambda_function_name",
/// Role = iamForLambda.Arn,
/// Handler = "exports.test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// lambda, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// Bucket: "ourcorp-lambda-functions",
/// Key:    "hello-world.zip",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewFunction(ctx, "test_lambda", &lambda.FunctionArgs{
/// S3Bucket:        pulumi.String(lambda.Bucket),
/// S3Key:           pulumi.String(lambda.Key),
/// S3ObjectVersion: pulumi.String(lambda.VersionId),
/// Name:            pulumi.String("lambda_function_name"),
/// Role:            pulumi.Any(iamForLambda.Arn),
/// Handler:         pulumi.String("exports.test"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var lambda = S3Functions.getObject(GetObjectArgs.builder()
/// .bucket("ourcorp-lambda-functions")
/// .key("hello-world.zip")
/// .build());
///
/// var testLambda = new Function("testLambda", FunctionArgs.builder()
/// .s3Bucket(lambda.bucket())
/// .s3Key(lambda.key())
/// .s3ObjectVersion(lambda.versionId())
/// .name("lambda_function_name")
/// .role(iamForLambda.arn())
/// .handler("exports.test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testLambda:
/// type: aws:lambda:Function
/// name: test_lambda
/// properties:
/// s3Bucket: ${lambda.bucket}
/// s3Key: ${lambda.key}
/// s3ObjectVersion: ${lambda.versionId}
/// name: lambda_function_name
/// role: ${iamForLambda.arn}
/// handler: exports.test
/// variables:
/// lambda:
/// fn::invoke:
/// function: aws:s3:getObject
/// arguments:
/// bucket: ourcorp-lambda-functions
/// key: hello-world.zip
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetObjectResult> getObject(
  GetObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getObject:getObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetObjectResult.fromMap(result);
}
