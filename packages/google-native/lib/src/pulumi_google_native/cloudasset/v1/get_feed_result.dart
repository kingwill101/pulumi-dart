// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response_cloudasset_v1.dart';
import 'feed_output_config_response.dart';

/// Result data returned by getFeed.
class GetFeedResult {
  /// A list of the full names of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. For a list of the full names for supported asset types, see [Resource name format](/asset-inventory/docs/resource-name-format).
  final List<String> assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `"compute.googleapis.com/Disk"` For a list of all supported asset types, see [Supported asset types](/asset-inventory/docs/supported-asset-types).
  final List<String> assetTypes;

  /// A condition which determines whether an asset update should be published. If specified, an asset will be returned only when the expression evaluates to true. When set, `expression` field in the `Expr` must be a valid [CEL expression] (https://github.com/google/cel-spec) on a TemporalAsset with name `temporal_asset`. Example: a Feed with expression ("temporal_asset.deleted == true") will only publish Asset deletions. Other fields of `Expr` are optional. See our [user guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes-with-condition) for detailed instructions.
  final ExprResponseCloudassetV1 condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  final String contentType;

  /// Feed output configuration defining where the asset updates are published to.
  final FeedOutputConfigResponse feedOutputConfig;

  /// The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_number}/feeds/{client-assigned_feed_identifier} or organizations/{organization_number}/feeds/{client-assigned_feed_identifier} The client-assigned feed identifier must be unique within the parent project/folder/organization.
  final String name;

  /// A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it outputs specified relationship updates on the [asset_names] or the [asset_types]. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_names] or [asset_types], or any of the [asset_names] or the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it outputs the supported relationships of the types of [asset_names] and [asset_types] or returns an error if any of the [asset_names] or the [asset_types] has no replationship support. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.
  final List<String> relationshipTypes;

  GetFeedResult({
    required this.assetNames,
    required this.assetTypes,
    required this.condition,
    required this.contentType,
    required this.feedOutputConfig,
    required this.name,
    required this.relationshipTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetNames'] = assetNames;
    map['assetTypes'] = assetTypes;
    map['condition'] = condition.toMap();
    map['contentType'] = contentType;
    map['feedOutputConfig'] = feedOutputConfig.toMap();
    map['name'] = name;
    map['relationshipTypes'] = relationshipTypes;
    return map;
  }

  factory GetFeedResult.fromMap(Map<String, dynamic> map) {
    return GetFeedResult(
      assetNames: (map['assetNames'] as List).cast<String>(),
      assetTypes: (map['assetTypes'] as List).cast<String>(),
      condition: ExprResponseCloudassetV1.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      contentType: map['contentType'] as String,
      feedOutputConfig: FeedOutputConfigResponse.fromMap(
          (map['feedOutputConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      relationshipTypes: (map['relationshipTypes'] as List).cast<String>(),
    );
  }
}
