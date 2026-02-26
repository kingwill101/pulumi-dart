import 'package:pulumi/pulumi.dart';
import '../storage_lens_configuration_storage_lens_configuration/storage_lens_configuration_storage_lens_configuration.dart';
import 'storage_lens_configuration_args.dart';

/// Provides a resource to manage an S3 Storage Lens configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.s3control.StorageLensConfiguration("example", {
/// configId: "example-1",
/// storageLensConfiguration: {
/// enabled: true,
/// accountLevel: {
/// activityMetrics: {
/// enabled: true,
/// },
/// bucketLevel: {
/// activityMetrics: {
/// enabled: true,
/// },
/// },
/// },
/// dataExport: {
/// cloudWatchMetrics: {
/// enabled: true,
/// },
/// s3BucketDestination: {
/// accountId: current.then(current => current.accountId),
/// arn: target.arn,
/// format: "CSV",
/// outputSchemaVersion: "V_1",
/// encryption: {
/// sseS3s: [{}],
/// },
/// },
/// },
/// exclude: {
/// buckets: [
/// b1.arn,
/// b2.arn,
/// ],
/// regions: ["us-east-2"],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.s3control.StorageLensConfiguration("example",
/// config_id="example-1",
/// storage_lens_configuration={
/// "enabled": True,
/// "account_level": {
/// "activity_metrics": {
/// "enabled": True,
/// },
/// "bucket_level": {
/// "activity_metrics": {
/// "enabled": True,
/// },
/// },
/// },
/// "data_export": {
/// "cloud_watch_metrics": {
/// "enabled": True,
/// },
/// "s3_bucket_destination": {
/// "account_id": current.account_id,
/// "arn": target["arn"],
/// "format": "CSV",
/// "output_schema_version": "V_1",
/// "encryption": {
/// "sse_s3s": [{}],
/// },
/// },
/// },
/// "exclude": {
/// "buckets": [
/// b1["arn"],
/// b2["arn"],
/// ],
/// "regions": ["us-east-2"],
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.S3Control.StorageLensConfiguration("example", new()
/// {
/// ConfigId = "example-1",
/// StorageLensConfigurationDetail = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationArgs
/// {
/// Enabled = true,
/// AccountLevel = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelArgs
/// {
/// ActivityMetrics = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetricsArgs
/// {
/// Enabled = true,
/// },
/// BucketLevel = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelArgs
/// {
/// ActivityMetrics = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetricsArgs
/// {
/// Enabled = true,
/// },
/// },
/// },
/// DataExport = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationDataExportArgs
/// {
/// CloudWatchMetrics = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetricsArgs
/// {
/// Enabled = true,
/// },
/// S3BucketDestination = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationArgs
/// {
/// AccountId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// Arn = target.Arn,
/// Format = "CSV",
/// OutputSchemaVersion = "V_1",
/// Encryption = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionArgs
/// {
/// SseS3s = new[]
/// {
/// null,
/// },
/// },
/// },
/// },
/// Exclude = new Aws.S3Control.Inputs.StorageLensConfigurationStorageLensConfigurationExcludeArgs
/// {
/// Buckets = new[]
/// {
/// b1.Arn,
/// b2.Arn,
/// },
/// Regions = new[]
/// {
/// "us-east-2",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = s3control.NewStorageLensConfiguration(ctx, "example", &s3control.StorageLensConfigurationArgs{
/// ConfigId: pulumi.String("example-1"),
/// StorageLensConfiguration: &s3control.StorageLensConfigurationStorageLensConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// AccountLevel: &s3control.StorageLensConfigurationStorageLensConfigurationAccountLevelArgs{
/// ActivityMetrics: &s3control.StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetricsArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// BucketLevel: &s3control.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelArgs{
/// ActivityMetrics: &s3control.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetricsArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// },
/// DataExport: &s3control.StorageLensConfigurationStorageLensConfigurationDataExportArgs{
/// CloudWatchMetrics: &s3control.StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetricsArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// S3BucketDestination: &s3control.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationArgs{
/// AccountId:           pulumi.String(current.AccountId),
/// Arn:                 pulumi.Any(target.Arn),
/// Format:              pulumi.String("CSV"),
/// OutputSchemaVersion: pulumi.String("V_1"),
/// Encryption: &s3control.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionArgs{
/// SseS3s: s3control.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseS3Array{
/// &s3control.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseS3Args{},
/// },
/// },
/// },
/// },
/// Exclude: &s3control.StorageLensConfigurationStorageLensConfigurationExcludeArgs{
/// Buckets: pulumi.StringArray{
/// b1.Arn,
/// b2.Arn,
/// },
/// Regions: pulumi.StringArray{
/// pulumi.String("us-east-2"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.s3control.StorageLensConfiguration;
/// import com.pulumi.aws.s3control.StorageLensConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetricsArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetricsArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationDataExportArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetricsArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionArgs;
/// import com.pulumi.aws.s3control.inputs.StorageLensConfigurationStorageLensConfigurationExcludeArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new StorageLensConfiguration("example", StorageLensConfigurationArgs.builder()
/// .configId("example-1")
/// .storageLensConfiguration(StorageLensConfigurationStorageLensConfigurationArgs.builder()
/// .enabled(true)
/// .accountLevel(StorageLensConfigurationStorageLensConfigurationAccountLevelArgs.builder()
/// .activityMetrics(StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetricsArgs.builder()
/// .enabled(true)
/// .build())
/// .bucketLevel(StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelArgs.builder()
/// .activityMetrics(StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetricsArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .build())
/// .dataExport(StorageLensConfigurationStorageLensConfigurationDataExportArgs.builder()
/// .cloudWatchMetrics(StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetricsArgs.builder()
/// .enabled(true)
/// .build())
/// .s3BucketDestination(StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationArgs.builder()
/// .accountId(current.accountId())
/// .arn(target.arn())
/// .format("CSV")
/// .outputSchemaVersion("V_1")
/// .encryption(StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionArgs.builder()
/// .sseS3s(StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseS3Args.builder()
/// .build())
/// .build())
/// .build())
/// .build())
/// .exclude(StorageLensConfigurationStorageLensConfigurationExcludeArgs.builder()
/// .buckets(
/// b1.arn(),
/// b2.arn())
/// .regions("us-east-2")
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
/// type: aws:s3control:StorageLensConfiguration
/// properties:
/// configId: example-1
/// storageLensConfiguration:
/// enabled: true
/// accountLevel:
/// activityMetrics:
/// enabled: true
/// bucketLevel:
/// activityMetrics:
/// enabled: true
/// dataExport:
/// cloudWatchMetrics:
/// enabled: true
/// s3BucketDestination:
/// accountId: ${current.accountId}
/// arn: ${target.arn}
/// format: CSV
/// outputSchemaVersion: V_1
/// encryption:
/// sseS3s:
/// - {}
/// exclude:
/// buckets:
/// - ${b1.arn}
/// - ${b2.arn}
/// regions:
/// - us-east-2
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Storage Lens configurations using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`configId`" pulumi-lang-dotnet="`ConfigId`" pulumi-lang-go="`configId`" pulumi-lang-python="`config_id`" pulumi-lang-yaml="`configId`" pulumi-lang-java="`configId`">`config_id`</span>, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/storageLensConfiguration:StorageLensConfiguration example 123456789012:example-1
/// ```
class StorageLensConfiguration extends CustomResource {
  /// The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
  late final Output<String> arn;

  /// The ID of the S3 Storage Lens configuration.
  late final Output<String> configId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  late final Output<StorageLensConfigurationStorageLensConfiguration>
      storageLensConfiguration;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  StorageLensConfiguration(
    String name, {
    StorageLensConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/storageLensConfiguration:StorageLensConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.configId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.storageLensConfiguration = Output.createUnknown<
        StorageLensConfigurationStorageLensConfiguration>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
