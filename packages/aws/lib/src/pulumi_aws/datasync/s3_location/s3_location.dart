import 'package:pulumi/pulumi.dart';
import '../s3_location_s3_config/s3_location_s3_config.dart';
import 's3_location_args.dart';

/// Manages an S3 Location within AWS DataSync.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.S3Location("example", {
/// s3BucketArn: exampleAwsS3Bucket.arn,
/// subdirectory: "/example/prefix",
/// s3Config: {
/// bucketAccessRoleArn: exampleAwsIamRole.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.S3Location("example",
/// s3_bucket_arn=example_aws_s3_bucket["arn"],
/// subdirectory="/example/prefix",
/// s3_config={
/// "bucket_access_role_arn": example_aws_iam_role["arn"],
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
/// var example = new Aws.DataSync.S3Location("example", new()
/// {
/// S3BucketArn = exampleAwsS3Bucket.Arn,
/// Subdirectory = "/example/prefix",
/// S3Config = new Aws.DataSync.Inputs.S3LocationS3ConfigArgs
/// {
/// BucketAccessRoleArn = exampleAwsIamRole.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewS3Location(ctx, "example", &datasync.S3LocationArgs{
/// S3BucketArn:  pulumi.Any(exampleAwsS3Bucket.Arn),
/// Subdirectory: pulumi.String("/example/prefix"),
/// S3Config: &datasync.S3LocationS3ConfigArgs{
/// BucketAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.datasync.S3Location;
/// import com.pulumi.aws.datasync.S3LocationArgs;
/// import com.pulumi.aws.datasync.inputs.S3LocationS3ConfigArgs;
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
/// var example = new S3Location("example", S3LocationArgs.builder()
/// .s3BucketArn(exampleAwsS3Bucket.arn())
/// .subdirectory("/example/prefix")
/// .s3Config(S3LocationS3ConfigArgs.builder()
/// .bucketAccessRoleArn(exampleAwsIamRole.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:S3Location
/// properties:
/// s3BucketArn: ${exampleAwsS3Bucket.arn}
/// subdirectory: /example/prefix
/// s3Config:
/// bucketAccessRoleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Bucket on AWS Outposts
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const destination = new aws.datasync.S3Location("destination", {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// s3BucketArn: exampleAwsS3AccessPoint.arn,
/// s3StorageClass: "OUTPOSTS",
/// subdirectory: "/example/prefix",
/// s3Config: {
/// bucketAccessRoleArn: example.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// destination = aws.datasync.S3Location("destination",
/// agent_arns=[example_aws_datasync_agent["arn"]],
/// s3_bucket_arn=example_aws_s3_access_point["arn"],
/// s3_storage_class="OUTPOSTS",
/// subdirectory="/example/prefix",
/// s3_config={
/// "bucket_access_role_arn": example["arn"],
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
/// var destination = new Aws.DataSync.S3Location("destination", new()
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// S3BucketArn = exampleAwsS3AccessPoint.Arn,
/// S3StorageClass = "OUTPOSTS",
/// Subdirectory = "/example/prefix",
/// S3Config = new Aws.DataSync.Inputs.S3LocationS3ConfigArgs
/// {
/// BucketAccessRoleArn = example.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewS3Location(ctx, "destination", &datasync.S3LocationArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// S3BucketArn:    pulumi.Any(exampleAwsS3AccessPoint.Arn),
/// S3StorageClass: pulumi.String("OUTPOSTS"),
/// Subdirectory:   pulumi.String("/example/prefix"),
/// S3Config: &datasync.S3LocationS3ConfigArgs{
/// BucketAccessRoleArn: pulumi.Any(example.Arn),
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
/// import com.pulumi.aws.datasync.S3Location;
/// import com.pulumi.aws.datasync.S3LocationArgs;
/// import com.pulumi.aws.datasync.inputs.S3LocationS3ConfigArgs;
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
/// var destination = new S3Location("destination", S3LocationArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .s3BucketArn(exampleAwsS3AccessPoint.arn())
/// .s3StorageClass("OUTPOSTS")
/// .subdirectory("/example/prefix")
/// .s3Config(S3LocationS3ConfigArgs.builder()
/// .bucketAccessRoleArn(example.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// destination:
/// type: aws:datasync:S3Location
/// properties:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// s3BucketArn: ${exampleAwsS3AccessPoint.arn}
/// s3StorageClass: OUTPOSTS
/// subdirectory: /example/prefix
/// s3Config:
/// bucketAccessRoleArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DataSync S3 location.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.S3Location`" pulumi-lang-dotnet="`aws.datasync.S3Location`" pulumi-lang-go="`datasync.S3Location`" pulumi-lang-python="`datasync.S3Location`" pulumi-lang-yaml="`aws.datasync.S3Location`" pulumi-lang-java="`aws.datasync.S3Location`">`aws.datasync.S3Location`</span> using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/s3Location:S3Location example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class S3Location extends CustomResource {
  /// (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  late final Output<List<String>?> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  late final Output<String> s3BucketArn;

  /// Configuration block containing information for connecting to S3.
  late final Output<S3LocationS3Config> s3Config;

  /// Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  late final Output<String> s3StorageClass;

  /// Prefix to perform actions as source or destination.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> uri;

  S3Location(
    String name, {
    S3LocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/s3Location:S3Location',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentArns = Output.createUnknown<List<String>?>();
    this.arn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.s3BucketArn = Output.createUnknown<String>();
    this.s3Config = Output.createUnknown<S3LocationS3Config>();
    this.s3StorageClass = Output.createUnknown<String>();
    this.subdirectory = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uri = Output.createUnknown<String>();
  }
}
