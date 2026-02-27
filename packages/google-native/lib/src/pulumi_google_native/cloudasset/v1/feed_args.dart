// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr_cloudasset_v1.dart';
import 'feed_content_type.dart';
import 'feed_output_config.dart';

/// The set of arguments for Feed.
class FeedArgs {
  /// A list of the full names of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. For a list of the full names for supported asset types, see [Resource name format](/asset-inventory/docs/resource-name-format).
  final pulumi.Input<List<String>>? assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `"compute.googleapis.com/Disk"` For a list of all supported asset types, see [Supported asset types](/asset-inventory/docs/supported-asset-types).
  final pulumi.Input<List<String>>? assetTypes;

  /// A condition which determines whether an asset update should be published. If specified, an asset will be returned only when the expression evaluates to true. When set, `expression` field in the `Expr` must be a valid [CEL expression] (https://github.com/google/cel-spec) on a TemporalAsset with name `temporal_asset`. Example: a Feed with expression ("temporal_asset.deleted == true") will only publish Asset deletions. Other fields of `Expr` are optional. See our [user guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes-with-condition) for detailed instructions.
  final pulumi.Input<ExprCloudassetV1>? condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  final pulumi.Input<FeedContentType>? contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent project/folder/organization.
  final pulumi.Input<String> feedId;

  /// Feed output configuration defining where the asset updates are published to.
  final pulumi.Input<FeedOutputConfig> feedOutputConfig;

  /// The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_number}/feeds/{client-assigned_feed_identifier} or organizations/{organization_number}/feeds/{client-assigned_feed_identifier} The client-assigned feed identifier must be unique within the parent project/folder/organization.
  final pulumi.Input<String> name;

  /// A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it outputs specified relationship updates on the [asset_names] or the [asset_types]. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_names] or [asset_types], or any of the [asset_names] or the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it outputs the supported relationships of the types of [asset_names] and [asset_types] or returns an error if any of the [asset_names] or the [asset_types] has no replationship support. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.
  final pulumi.Input<List<String>>? relationshipTypes;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  FeedArgs({
    this.assetNames,
    this.assetTypes,
    this.condition,
    this.contentType,
    required this.feedId,
    required this.feedOutputConfig,
    required this.name,
    this.relationshipTypes,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetNamesValue = assetNames;
    if (assetNamesValue != null) {
      map['assetNames'] = assetNamesValue;
    }
    final assetTypesValue = assetTypes;
    if (assetTypesValue != null) {
      map['assetTypes'] = assetTypesValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<ExprCloudassetV1,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] =
          pulumi.Input.mapOptionalInputValue<FeedContentType, String>(
              contentTypeValue, (value) => value.value);
    }
    map['feedId'] = feedId;
    map['feedOutputConfig'] =
        pulumi.Input.mapInputValue<FeedOutputConfig, Map<String, dynamic>>(
            feedOutputConfig, (value) => value.toMap());
    map['name'] = name;
    final relationshipTypesValue = relationshipTypes;
    if (relationshipTypesValue != null) {
      map['relationshipTypes'] = relationshipTypesValue;
    }
    map['v1Id'] = v1Id;
    map['v1Id1'] = v1Id1;
    return map;
  }

  factory FeedArgs.fromMap(Map<String, dynamic> map) {
    return FeedArgs(
      assetNames: pulumi.Input.asOptionalInput<List<String>>(map['assetNames']),
      assetTypes: pulumi.Input.asOptionalInput<List<String>>(map['assetTypes']),
      condition:
          pulumi.Input.asOptionalInput<ExprCloudassetV1>(map['condition']),
      contentType:
          pulumi.Input.asOptionalInput<FeedContentType>(map['contentType']),
      feedId: pulumi.Input.asInput<String>(map['feedId']),
      feedOutputConfig:
          pulumi.Input.asInput<FeedOutputConfig>(map['feedOutputConfig']),
      name: pulumi.Input.asInput<String>(map['name']),
      relationshipTypes:
          pulumi.Input.asOptionalInput<List<String>>(map['relationshipTypes']),
      v1Id: pulumi.Input.asInput<String>(map['v1Id']),
      v1Id1: pulumi.Input.asInput<String>(map['v1Id1']),
    );
  }
}
