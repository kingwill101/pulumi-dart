import 'package:pulumi/pulumi.dart';
import '../object_lambda_access_point_configuration/object_lambda_access_point_configuration.dart';
import 'object_lambda_access_point_args.dart';

/// Provides a resource to manage an S3 Object Lambda Access Point.
/// An Object Lambda access point is associated with exactly one standard access point and thus one Amazon S3 bucket.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
/// bucket: example.id,
/// name: "example",
/// });
/// const exampleObjectLambdaAccessPoint = new aws.s3control.ObjectLambdaAccessPoint("example", {
/// name: "example",
/// configuration: {
/// supportingAccessPoint: exampleAccessPoint.arn,
/// transformationConfigurations: [{
/// actions: ["GetObject"],
/// contentTransformation: {
/// awsLambda: {
/// functionArn: exampleAwsLambdaFunction.arn,
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_access_point = aws.s3.AccessPoint("example",
/// bucket=example.id,
/// name="example")
/// example_object_lambda_access_point = aws.s3control.ObjectLambdaAccessPoint("example",
/// name="example",
/// configuration={
/// "supporting_access_point": example_access_point.arn,
/// "transformation_configurations": [{
/// "actions": ["GetObject"],
/// "content_transformation": {
/// "aws_lambda": {
/// "function_arn": example_aws_lambda_function["arn"],
/// },
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// });
///
/// var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
/// {
/// Bucket = example.Id,
/// Name = "example",
/// });
///
/// var exampleObjectLambdaAccessPoint = new Aws.S3Control.ObjectLambdaAccessPoint("example", new()
/// {
/// Name = "example",
/// Configuration = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationArgs
/// {
/// SupportingAccessPoint = exampleAccessPoint.Arn,
/// TransformationConfigurations = new[]
/// {
/// new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs
/// {
/// Actions = new[]
/// {
/// "GetObject",
/// },
/// ContentTransformation = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs
/// {
/// AwsLambda = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs
/// {
/// FunctionArn = exampleAwsLambdaFunction.Arn,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleAccessPoint, err := s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3control.NewObjectLambdaAccessPoint(ctx, "example", &s3control.ObjectLambdaAccessPointArgs{
/// Name: pulumi.String("example"),
/// Configuration: &s3control.ObjectLambdaAccessPointConfigurationArgs{
/// SupportingAccessPoint: exampleAccessPoint.Arn,
/// TransformationConfigurations: s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationArray{
/// &s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("GetObject"),
/// },
/// ContentTransformation: &s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs{
/// AwsLambda: &s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs{
/// FunctionArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPoint;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPointArgs;
/// import com.pulumi.aws.s3control.inputs.ObjectLambdaAccessPointConfigurationArgs;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example")
/// .build());
///
/// var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
/// .bucket(example.id())
/// .name("example")
/// .build());
///
/// var exampleObjectLambdaAccessPoint = new ObjectLambdaAccessPoint("exampleObjectLambdaAccessPoint", ObjectLambdaAccessPointArgs.builder()
/// .name("example")
/// .configuration(ObjectLambdaAccessPointConfigurationArgs.builder()
/// .supportingAccessPoint(exampleAccessPoint.arn())
/// .transformationConfigurations(ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs.builder()
/// .actions("GetObject")
/// .contentTransformation(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs.builder()
/// .awsLambda(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs.builder()
/// .functionArn(exampleAwsLambdaFunction.arn())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example
/// exampleAccessPoint:
/// type: aws:s3:AccessPoint
/// name: example
/// properties:
/// bucket: ${example.id}
/// name: example
/// exampleObjectLambdaAccessPoint:
/// type: aws:s3control:ObjectLambdaAccessPoint
/// name: example
/// properties:
/// name: example
/// configuration:
/// supportingAccessPoint: ${exampleAccessPoint.arn}
/// transformationConfigurations:
/// - actions:
/// - GetObject
/// contentTransformation:
/// awsLambda:
/// functionArn: ${exampleAwsLambdaFunction.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Object Lambda Access Points using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/objectLambdaAccessPoint:ObjectLambdaAccessPoint example 123456789012:example
/// ```
class ObjectLambdaAccessPoint extends CustomResource {
  /// The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// Alias for the S3 Object Lambda Access Point.
  late final Output<String> alias;

  /// Amazon Resource Name (ARN) of the Object Lambda Access Point.
  late final Output<String> arn;

  /// A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  late final Output<ObjectLambdaAccessPointConfiguration> configuration;

  /// The name for this Object Lambda Access Point.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ObjectLambdaAccessPoint(
    String name, {
    ObjectLambdaAccessPointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/objectLambdaAccessPoint:ObjectLambdaAccessPoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<ObjectLambdaAccessPointConfiguration>('configuration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
