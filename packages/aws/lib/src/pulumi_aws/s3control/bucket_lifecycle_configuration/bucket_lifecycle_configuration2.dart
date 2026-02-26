import 'package:pulumi/pulumi.dart';
import '../bucket_lifecycle_configuration_rule/bucket_lifecycle_configuration_rule2.dart';
import 'bucket_lifecycle_configuration_args2.dart';

/// Provides a resource to manage an S3 Control Bucket Lifecycle Configuration.
///
/// > **NOTE:** Each S3 Control Bucket can only have one Lifecycle Configuration. Using multiple of this resource against the same S3 Control Bucket will result in perpetual differences each provider run.
///
/// > This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Lifecycle Configurations in an AWS Partition, see the <span pulumi-lang-nodejs="`aws.s3.Bucket`" pulumi-lang-dotnet="`aws.s3.Bucket`" pulumi-lang-go="`s3.Bucket`" pulumi-lang-python="`s3.Bucket`" pulumi-lang-yaml="`aws.s3.Bucket`" pulumi-lang-java="`aws.s3.Bucket`">`aws.s3.Bucket`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.BucketLifecycleConfiguration("example", {
/// bucket: exampleAwsS3controlBucket.arn,
/// rules: [
/// {
/// expiration: {
/// days: 365,
/// },
/// filter: {
/// prefix: "logs/",
/// },
/// id: "logs",
/// },
/// {
/// expiration: {
/// days: 7,
/// },
/// filter: {
/// prefix: "temp/",
/// },
/// id: "temp",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.BucketLifecycleConfiguration("example",
/// bucket=example_aws_s3control_bucket["arn"],
/// rules=[
/// {
/// "expiration": {
/// "days": 365,
/// },
/// "filter": {
/// "prefix": "logs/",
/// },
/// "id": "logs",
/// },
/// {
/// "expiration": {
/// "days": 7,
/// },
/// "filter": {
/// "prefix": "temp/",
/// },
/// "id": "temp",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3Control.BucketLifecycleConfiguration("example", new()
/// {
/// Bucket = exampleAwsS3controlBucket.Arn,
/// Rules = new[]
/// {
/// new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleArgs
/// {
/// Expiration = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
/// {
/// Days = 365,
/// },
/// Filter = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleFilterArgs
/// {
/// Prefix = "logs/",
/// },
/// Id = "logs",
/// },
/// new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleArgs
/// {
/// Expiration = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
/// {
/// Days = 7,
/// },
/// Filter = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleFilterArgs
/// {
/// Prefix = "temp/",
/// },
/// Id = "temp",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3control.NewBucketLifecycleConfiguration(ctx, "example", &s3control.BucketLifecycleConfigurationArgs{
/// Bucket: pulumi.Any(exampleAwsS3controlBucket.Arn),
/// Rules: s3control.BucketLifecycleConfigurationRuleArray{
/// &s3control.BucketLifecycleConfigurationRuleArgs{
/// Expiration: &s3control.BucketLifecycleConfigurationRuleExpirationArgs{
/// Days: pulumi.Int(365),
/// },
/// Filter: &s3control.BucketLifecycleConfigurationRuleFilterArgs{
/// Prefix: pulumi.String("logs/"),
/// },
/// Id: pulumi.String("logs"),
/// },
/// &s3control.BucketLifecycleConfigurationRuleArgs{
/// Expiration: &s3control.BucketLifecycleConfigurationRuleExpirationArgs{
/// Days: pulumi.Int(7),
/// },
/// Filter: &s3control.BucketLifecycleConfigurationRuleFilterArgs{
/// Prefix: pulumi.String("temp/"),
/// },
/// Id: pulumi.String("temp"),
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
/// import com.pulumi.aws.s3control.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3control.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleExpirationArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
/// var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
/// .bucket(exampleAwsS3controlBucket.arn())
/// .rules(
/// BucketLifecycleConfigurationRuleArgs.builder()
/// .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
/// .days(365)
/// .build())
/// .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
/// .prefix("logs/")
/// .build())
/// .id("logs")
/// .build(),
/// BucketLifecycleConfigurationRuleArgs.builder()
/// .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
/// .days(7)
/// .build())
/// .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
/// .prefix("temp/")
/// .build())
/// .id("temp")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3control:BucketLifecycleConfiguration
/// properties:
/// bucket: ${exampleAwsS3controlBucket.arn}
/// rules:
/// - expiration:
/// days: 365
/// filter:
/// prefix: logs/
/// id: logs
/// - expiration:
/// days: 7
/// filter:
/// prefix: temp/
/// id: temp
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Control Bucket Lifecycle Configurations using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketLifecycleConfiguration2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the bucket.
  late final Output<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  late final Output<List<BucketLifecycleConfigurationRule2>> rules;

  BucketLifecycleConfiguration2(
    String name, {
    BucketLifecycleConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketLifecycleConfigurationRule2>>('rules');
  }
}
