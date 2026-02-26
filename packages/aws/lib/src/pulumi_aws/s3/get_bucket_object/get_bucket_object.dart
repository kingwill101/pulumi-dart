import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';

/// > **NOTE:** The <span pulumi-lang-nodejs="`aws.s3.BucketObject`" pulumi-lang-dotnet="`aws.s3.BucketObject`" pulumi-lang-go="`s3.BucketObject`" pulumi-lang-python="`s3.BucketObject`" pulumi-lang-yaml="`aws.s3.BucketObject`" pulumi-lang-java="`aws.s3.BucketObject`">`aws.s3.BucketObject`</span> data source is DEPRECATED and will be removed in a future version! Use <span pulumi-lang-nodejs="`aws.s3.BucketObjectv2`" pulumi-lang-dotnet="`aws.s3.BucketObjectv2`" pulumi-lang-go="`s3.BucketObjectv2`" pulumi-lang-python="`s3.BucketObjectv2`" pulumi-lang-yaml="`aws.s3.BucketObjectv2`" pulumi-lang-java="`aws.s3.BucketObjectv2`">`aws.s3.BucketObjectv2`</span> instead, where new features and fixes will be added.
///
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
/// const bootstrapScript = aws.s3.getBucketObject({
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
/// bootstrap_script = aws.s3.get_bucket_object(bucket="ourcorp-deploy-config",
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
/// var bootstrapScript = Aws.S3.GetBucketObject.Invoke(new()
/// {
/// Bucket = "ourcorp-deploy-config",
/// Key = "ec2-bootstrap-script.sh",
/// });
///
/// var example = new Aws.Ec2.Instance("example", new()
/// {
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// Ami = "ami-2757f631",
/// UserData = bootstrapScript.Apply(getBucketObjectResult => getBucketObjectResult.Body),
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
/// bootstrapScript, err := s3.LookupBucketObject(ctx, &s3.LookupBucketObjectArgs{
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
/// import com.pulumi.aws.s3.inputs.GetBucketObjectArgs;
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
/// final var bootstrapScript = S3Functions.getBucketObject(GetBucketObjectArgs.builder()
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
/// function: aws:s3:getBucketObject
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
/// const lambda = aws.s3.getBucketObject({
/// bucket: "ourcorp-lambda-functions",
/// key: "hello-world.zip",
/// });
/// const testLambda = new aws.lambda.Function("test_lambda", {
/// s3Bucket: lambda.then(lambda => lambda.id),
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
/// lambda_ = aws.s3.get_bucket_object(bucket="ourcorp-lambda-functions",
/// key="hello-world.zip")
/// test_lambda = aws.lambda_.Function("test_lambda",
/// s3_bucket=lambda_.id,
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
/// var lambda = Aws.S3.GetBucketObject.Invoke(new()
/// {
/// Bucket = "ourcorp-lambda-functions",
/// Key = "hello-world.zip",
/// });
///
/// var testLambda = new Aws.Lambda.Function("test_lambda", new()
/// {
/// S3Bucket = lambda.Apply(getBucketObjectResult => getBucketObjectResult.Id),
/// S3Key = lambda.Apply(getBucketObjectResult => getBucketObjectResult.Key),
/// S3ObjectVersion = lambda.Apply(getBucketObjectResult => getBucketObjectResult.VersionId),
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
/// lambda, err := s3.LookupBucketObject(ctx, &s3.LookupBucketObjectArgs{
/// Bucket: "ourcorp-lambda-functions",
/// Key:    "hello-world.zip",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewFunction(ctx, "test_lambda", &lambda.FunctionArgs{
/// S3Bucket:        pulumi.String(lambda.Id),
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
/// import com.pulumi.aws.s3.inputs.GetBucketObjectArgs;
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
/// final var lambda = S3Functions.getBucketObject(GetBucketObjectArgs.builder()
/// .bucket("ourcorp-lambda-functions")
/// .key("hello-world.zip")
/// .build());
///
/// var testLambda = new Function("testLambda", FunctionArgs.builder()
/// .s3Bucket(lambda.id())
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
/// s3Bucket: ${lambda.id}
/// s3Key: ${lambda.key}
/// s3ObjectVersion: ${lambda.versionId}
/// name: lambda_function_name
/// role: ${iamForLambda.arn}
/// handler: exports.test
/// variables:
/// lambda:
/// fn::invoke:
/// function: aws:s3:getBucketObject
/// arguments:
/// bucket: ourcorp-lambda-functions
/// key: hello-world.zip
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObject:getBucketObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}
