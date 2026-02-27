// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_feed_condition/organization_feed_condition.dart';
import '../organization_feed_feed_output_config/organization_feed_feed_output_config.dart';

/// The set of arguments for OrganizationFeed.
class OrganizationFeedArgs {
  /// A list of the full names of the assets to receive updates. You must specify either or both of
  /// assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
  /// exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
  /// See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info.
  final pulumi.Input<List<String>>? assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  final pulumi.Input<List<String>>? assetTypes;

  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing.
  final pulumi.Input<String> billingProject;

  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedCondition>? condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  final pulumi.Input<String>? contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  final pulumi.Input<String> feedId;

  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedFeedOutputConfig> feedOutputConfig;

  /// The organization this feed should be created in.
  final pulumi.Input<String> orgId;

  OrganizationFeedArgs({
    this.assetNames,
    this.assetTypes,
    required this.billingProject,
    this.condition,
    this.contentType,
    required this.feedId,
    required this.feedOutputConfig,
    required this.orgId,
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
    map['billingProject'] = billingProject;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          OrganizationFeedCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    map['feedId'] = feedId;
    map['feedOutputConfig'] = pulumi.Input.mapInputValue<
        OrganizationFeedFeedOutputConfig,
        Map<String, dynamic>>(feedOutputConfig, (value) => value.toMap());
    map['orgId'] = orgId;
    return map;
  }

  factory OrganizationFeedArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedArgs(
      assetNames: pulumi.Input.asOptionalInput<List<String>>(map['assetNames']),
      assetTypes: pulumi.Input.asOptionalInput<List<String>>(map['assetTypes']),
      billingProject: pulumi.Input.asInput<String>(map['billingProject']),
      condition: pulumi.Input.asOptionalInput<OrganizationFeedCondition>(
          map['condition']),
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      feedId: pulumi.Input.asInput<String>(map['feedId']),
      feedOutputConfig: pulumi.Input.asInput<OrganizationFeedFeedOutputConfig>(
          map['feedOutputConfig']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
    );
  }
}
