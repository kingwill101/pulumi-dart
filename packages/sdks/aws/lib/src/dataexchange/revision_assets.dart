import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_args.dart';
import 'revision_assets_asset.dart';
import 'revision_assets_state.dart';
import 'revision_assets_timeouts.dart';

/// Resource for managing AWS Data Exchange Revision Assets.
///
/// > Note: This resource creates a new revision and adds associated assets. Destroying this resource will delete the revision and all associated assets.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.RevisionAssets("example", {
///     dataSetId: "example-data-set-id",
///     assets: [{
///         createS3DataAccessFromS3Bucket: {
///             assetSource: {
///                 bucket: "example-bucket",
///             },
///         },
///     }],
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.RevisionAssets("example",
///     data_set_id="example-data-set-id",
///     assets=[{
///         "create_s3_data_access_from_s3_bucket": {
///             "asset_source": {
///                 "bucket": "example-bucket",
///             },
///         },
///     }],
///     tags={
///         "Environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataExchange.RevisionAssets("example", new()
///     {
///         DataSetId = "example-data-set-id",
///         Assets = new[]
///         {
///             new Aws.DataExchange.Inputs.RevisionAssetsAssetArgs
///             {
///                 CreateS3DataAccessFromS3Bucket = new Aws.DataExchange.Inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs
///                 {
///                     AssetSource = new Aws.DataExchange.Inputs.RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs
///                     {
///                         Bucket = "example-bucket",
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataexchange.NewRevisionAssets(ctx, "example", &dataexchange.RevisionAssetsArgs{
/// 			DataSetId: pulumi.String("example-data-set-id"),
/// 			Assets: dataexchange.RevisionAssetsAssetArray{
/// 				&dataexchange.RevisionAssetsAssetArgs{
/// 					CreateS3DataAccessFromS3Bucket: &dataexchange.RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs{
/// 						AssetSource: &dataexchange.RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs{
/// 							Bucket: pulumi.String("example-bucket"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RevisionAssets("example", RevisionAssetsArgs.builder()
///             .dataSetId("example-data-set-id")
///             .assets(RevisionAssetsAssetArgs.builder()
///                 .createS3DataAccessFromS3Bucket(RevisionAssetsAssetCreateS3DataAccessFromS3BucketArgs.builder()
///                     .assetSource(RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceArgs.builder()
///                         .bucket("example-bucket")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dataexchange:RevisionAssets
///     properties:
///       dataSetId: example-data-set-id
///       assets:
///         - createS3DataAccessFromS3Bucket:
///             assetSource:
///               bucket: example-bucket
///       tags:
///         Environment: Production
/// ```
class RevisionAssets extends pulumi.CustomResource {
  /// The ARN of the Data Exchange Revision Assets.
  late final pulumi.Output<String> arn;
  /// A block to define the asset associated with the revision. See Asset for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<RevisionAssetsAsset>?> assets;
  /// A comment for the revision. Maximum length is 16,348 characters.
  late final pulumi.Output<String?> comment;
  /// The timestamp when the revision was created, in RFC3339 format.
  late final pulumi.Output<String> createdAt;
  /// Unique identifier for the data set associated with the revision.
  late final pulumi.Output<String> dataSetId;
  late final pulumi.Output<bool> finalized;
  late final pulumi.Output<bool?> forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RevisionAssetsTimeouts?> timeouts;
  /// The timestamp when the revision was last updated, in RFC3339 format.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [RevisionAssets].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RevisionAssets]. {@macro pulumi_dataexchange_revision_assets_revision_assets_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RevisionAssets(
    String name, {
    RevisionAssetsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/revisionAssets:RevisionAssets',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assets = registerOutput<List<RevisionAssetsAsset>?>('assets');
    this.comment = registerOutput<String?>('comment');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.finalized = registerOutput<bool>('finalized');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RevisionAssetsTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [RevisionAssets] resource's state with the given [name] and [id].
  static RevisionAssets get(
    String name,
    pulumi.Input<String> id, {
    RevisionAssetsState? state,
  }) {
    return RevisionAssets._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RevisionAssets._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/revisionAssets:RevisionAssets',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assets = registerOutput<List<RevisionAssetsAsset>?>('assets');
    this.comment = registerOutput<String?>('comment');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.finalized = registerOutput<bool>('finalized');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RevisionAssetsTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
