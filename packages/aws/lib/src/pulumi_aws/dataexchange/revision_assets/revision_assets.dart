import 'package:pulumi/pulumi.dart';
import '../revision_assets_asset/revision_assets_asset.dart';
import '../revision_assets_timeouts/revision_assets_timeouts.dart';
import 'revision_assets_args.dart';

/// Resource for managing AWS Data Exchange Revision Assets.
///
/// > Note: This resource creates a new revision and adds associated assets. Destroying this resource will delete the revision and all associated assets.
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
/// const example = new aws.dataexchange.RevisionAssets("example", {
/// dataSetId: "example-data-set-id",
/// assets: [{
/// createS3DataAccessFromS3Bucket: {
/// assetSource: {
/// bucket: "example-bucket",
/// },
/// },
/// }],
/// tags: {
/// Environment: "Production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.RevisionAssets("example",
/// data_set_id="example-data-set-id",
/// assets=[{
/// "create_s3_data_access_from_s3_bucket": {
/// "asset_source": {
/// "bucket": "example-bucket",
/// },
/// },
/// }],
/// tags={
/// "Environment": "Production",
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
/// var example = new Aws.DataExchange.RevisionAssets("example", new()
/// {
/// DataSetId = "example-data-set-id",
/// Assets = new[]
/// {
/// new Aws.DataExchange.Inputs.RevisionAssetsAssetArgs
/// {
/// CreateS3DataAccessFromS3Bucket = new Aws.DataExchange.Inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs
/// {
/// AssetSource = new Aws.DataExchange.Inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs
/// {
/// Bucket = "example-bucket",
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Environment", "Production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataexchange.NewRevisionAssets(ctx, "example", &dataexchange.RevisionAssetsArgs{
/// DataSetId: pulumi.String("example-data-set-id"),
/// Assets: dataexchange.RevisionAssetsAssetArray{
/// &dataexchange.RevisionAssetsAssetArgs{
/// CreateS3DataAccessFromS3Bucket: &dataexchange.RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs{
/// AssetSource: &dataexchange.RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs{
/// Bucket: pulumi.String("example-bucket"),
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Production"),
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
/// import com.pulumi.aws.dataexchange.RevisionAssets;
/// import com.pulumi.aws.dataexchange.RevisionAssetsArgs;
/// import com.pulumi.aws.dataexchange.inputs.RevisionAssetsAssetArgs;
/// import com.pulumi.aws.dataexchange.inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs;
/// import com.pulumi.aws.dataexchange.inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs;
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
/// var example = new RevisionAssets("example", RevisionAssetsArgs.builder()
/// .dataSetId("example-data-set-id")
/// .assets(RevisionAssetsAssetArgs.builder()
/// .createS3DataAccessFromS3Bucket(RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs.builder()
/// .assetSource(RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs.builder()
/// .bucket("example-bucket")
/// .build())
/// .build())
/// .build())
/// .tags(Map.of("Environment", "Production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dataexchange:RevisionAssets
/// properties:
/// dataSetId: example-data-set-id
/// assets:
/// - createS3DataAccessFromS3Bucket:
/// assetSource:
/// bucket: example-bucket
/// tags:
/// Environment: Production
/// ```
/// <!--End PulumiCodeChooser -->
class RevisionAssets extends CustomResource {
  /// The ARN of the Data Exchange Revision Assets.
  late final Output<String> arn;

  /// A block to define the asset associated with the revision. See Asset for more details.
  ///
  /// The following arguments are optional:
  late final Output<List<RevisionAssetsAsset>?> assets;

  /// A comment for the revision. Maximum length is 16,348 characters.
  late final Output<String?> comment;

  /// The timestamp when the revision was created, in RFC3339 format.
  late final Output<String> createdAt;

  /// Unique identifier for the data set associated with the revision.
  late final Output<String> dataSetId;
  late final Output<bool> finalized;
  late final Output<bool?> forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<RevisionAssetsTimeouts?> timeouts;

  /// The timestamp when the revision was last updated, in RFC3339 format.
  late final Output<String> updatedAt;

  RevisionAssets(
    String name, {
    RevisionAssetsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/revisionAssets:RevisionAssets',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assets = Output.createUnknown<List<RevisionAssetsAsset>?>();
    this.comment = Output.createUnknown<String?>();
    this.createdAt = Output.createUnknown<String>();
    this.dataSetId = Output.createUnknown<String>();
    this.finalized = Output.createUnknown<bool>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<RevisionAssetsTimeouts?>();
    this.updatedAt = Output.createUnknown<String>();
  }
}
