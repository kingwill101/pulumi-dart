import 'package:pulumi/pulumi.dart';
import '../bucket_object_lock_configuration_rule/bucket_object_lock_configuration_rule.dart';
import 'bucket_object_lock_configuration_args.dart';

/// Provides an S3 bucket Object Lock configuration resource. For more information about Object Locking, go to [Using S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the Amazon S3 User Guide.
///
/// > This resource can be used enable Object Lock for **new** and **existing** buckets.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Object Lock configuration for new or existing buckets
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "mybucket"});
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
/// bucket: example.id,
/// versioningConfiguration: {
/// status: "Enabled",
/// },
/// });
/// const exampleBucketObjectLockConfiguration = new aws.s3.BucketObjectLockConfiguration("example", {
/// bucket: example.id,
/// rule: {
/// defaultRetention: {
/// mode: "COMPLIANCE",
/// days: 5,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="mybucket")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
/// bucket=example.id,
/// versioning_configuration={
/// "status": "Enabled",
/// })
/// example_bucket_object_lock_configuration = aws.s3.BucketObjectLockConfiguration("example",
/// bucket=example.id,
/// rule={
/// "default_retention": {
/// "mode": "COMPLIANCE",
/// "days": 5,
/// },
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
/// BucketName = "mybucket",
/// });
///
/// var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
/// {
/// Bucket = example.Id,
/// VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
/// {
/// Status = "Enabled",
/// },
/// });
///
/// var exampleBucketObjectLockConfiguration = new Aws.S3.BucketObjectLockConfiguration("example", new()
/// {
/// Bucket = example.Id,
/// Rule = new Aws.S3.Inputs.BucketObjectLockConfigurationRuleArgs
/// {
/// DefaultRetention = new Aws.S3.Inputs.BucketObjectLockConfigurationRuleDefaultRetentionArgs
/// {
/// Mode = "COMPLIANCE",
/// Days = 5,
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// Bucket: example.ID(),
/// VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// Status: pulumi.String("Enabled"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObjectLockConfiguration(ctx, "example", &s3.BucketObjectLockConfigurationArgs{
/// Bucket: example.ID(),
/// Rule: &s3.BucketObjectLockConfigurationRuleArgs{
/// DefaultRetention: &s3.BucketObjectLockConfigurationRuleDefaultRetentionArgs{
/// Mode: pulumi.String("COMPLIANCE"),
/// Days: pulumi.Int(5),
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
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketObjectLockConfiguration;
/// import com.pulumi.aws.s3.BucketObjectLockConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketObjectLockConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketObjectLockConfigurationRuleDefaultRetentionArgs;
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
/// .bucket("mybucket")
/// .build());
///
/// var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
/// .bucket(example.id())
/// .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
/// .status("Enabled")
/// .build())
/// .build());
///
/// var exampleBucketObjectLockConfiguration = new BucketObjectLockConfiguration("exampleBucketObjectLockConfiguration", BucketObjectLockConfigurationArgs.builder()
/// .bucket(example.id())
/// .rule(BucketObjectLockConfigurationRuleArgs.builder()
/// .defaultRetention(BucketObjectLockConfigurationRuleDefaultRetentionArgs.builder()
/// .mode("COMPLIANCE")
/// .days(5)
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
/// bucket: mybucket
/// exampleBucketVersioning:
/// type: aws:s3:BucketVersioning
/// name: example
/// properties:
/// bucket: ${example.id}
/// versioningConfiguration:
/// status: Enabled
/// exampleBucketObjectLockConfiguration:
/// type: aws:s3:BucketObjectLockConfiguration
/// name: example
/// properties:
/// bucket: ${example.id}
/// rule:
/// defaultRetention:
/// mode: COMPLIANCE
/// days: 5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span>, separated by a comma (`,`). For example:
///
///
/// **Using `pulumi import`**, import an S3 bucket Object Lock Configuration using one of two forms. If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span>, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name,123456789012
/// ```
class BucketObjectLockConfiguration2 extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  late final Output<String?> objectLockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  late final Output<BucketObjectLockConfigurationRule?> rule;

  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> resource.
  late final Output<String?> token;

  BucketObjectLockConfiguration2(
    String name, {
    BucketObjectLockConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.expectedBucketOwner = Output.createUnknown<String?>();
    this.objectLockEnabled = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.rule = Output.createUnknown<BucketObjectLockConfigurationRule?>();
    this.token = Output.createUnknown<String?>();
  }
}
