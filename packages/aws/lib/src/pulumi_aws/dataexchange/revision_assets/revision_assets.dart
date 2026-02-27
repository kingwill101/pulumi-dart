import 'package:pulumi/pulumi.dart' as pulumi;
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
}
