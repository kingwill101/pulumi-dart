import 'package:pulumi/pulumi.dart';
import 'expr_response16.dart';
import 'feed_args.dart';
import 'feed_output_config_response.dart';

/// Creates a feed in a parent project/folder/organization to listen to its asset updates.
/// Auto-naming is currently not supported for this resource.
class Feed extends CustomResource {
  /// A list of the full names of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. For a list of the full names for supported asset types, see [Resource name format](/asset-inventory/docs/resource-name-format).
  late final Output<List<String>> assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `"compute.googleapis.com/Disk"` For a list of all supported asset types, see [Supported asset types](/asset-inventory/docs/supported-asset-types).
  late final Output<List<String>> assetTypes;

  /// A condition which determines whether an asset update should be published. If specified, an asset will be returned only when the expression evaluates to true. When set, `expression` field in the `Expr` must be a valid [CEL expression] (https://github.com/google/cel-spec) on a TemporalAsset with name `temporal_asset`. Example: a Feed with expression ("temporal_asset.deleted == true") will only publish Asset deletions. Other fields of `Expr` are optional. See our [user guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes-with-condition) for detailed instructions.
  late final Output<ExprResponse16> condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  late final Output<String> contentType;

  /// Feed output configuration defining where the asset updates are published to.
  late final Output<FeedOutputConfigResponse> feedOutputConfig;

  /// The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_number}/feeds/{client-assigned_feed_identifier} or organizations/{organization_number}/feeds/{client-assigned_feed_identifier} The client-assigned feed identifier must be unique within the parent project/folder/organization.
  late final Output<String> name;

  /// A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it outputs specified relationship updates on the [asset_names] or the [asset_types]. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_names] or [asset_types], or any of the [asset_names] or the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it outputs the supported relationships of the types of [asset_names] and [asset_types] or returns an error if any of the [asset_names] or the [asset_types] has no replationship support. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.
  late final Output<List<String>> relationshipTypes;
  late final Output<String> v1Id;
  late final Output<String> v1Id1;

  Feed(
    String name, {
    FeedArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudasset/v1:Feed',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetNames = registerOutput<List<String>>('assetNames');
    this.assetTypes = registerOutput<List<String>>('assetTypes');
    this.condition = registerOutput<ExprResponse16>('condition');
    this.contentType = registerOutput<String>('contentType');
    this.feedOutputConfig =
        registerOutput<FeedOutputConfigResponse>('feedOutputConfig');
    this.name = registerOutput<String>('name');
    this.relationshipTypes = registerOutput<List<String>>('relationshipTypes');
    this.v1Id = registerOutput<String>('v1Id');
    this.v1Id1 = registerOutput<String>('v1Id1');
  }
}
