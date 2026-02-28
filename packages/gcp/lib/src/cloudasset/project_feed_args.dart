// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_feed_condition.dart';
import 'project_feed_feed_output_config.dart';

/// {@template pulumi_cloudasset_project_feed_project_feed_args_doc}
/// The set of arguments for ProjectFeed.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_project_feed_project_feed_args_doc}
class ProjectFeedArgs {
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
  /// enablement check, quota, and billing. If not specified, the resource's
  /// project will be used.
  final pulumi.Input<String>? billingProject;
  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  final pulumi.Input<ProjectFeedCondition>? condition;
  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  final pulumi.Input<String>? contentType;
  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  final pulumi.Input<String> feedId;
  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<ProjectFeedFeedOutputConfig> feedOutputConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectFeedArgs].
  /// [assetNames] A list of the full names of the assets to receive updates. You must specify either or both of
  /// [assetTypes] A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// [billingProject] The project whose identity will be used when sending messages to the
  /// [condition] A condition which determines whether an asset update should be published. If specified, an asset
  /// [contentType] Asset content type. If not specified, no content but the asset name and type will be returned.
  /// [feedId] This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  /// [feedOutputConfig] Output configuration for asset feed destination.
  /// [project] The ID of the project in which the resource belongs.
  ProjectFeedArgs({
    List<String>? assetNames,
    List<String>? assetTypes,
    String? billingProject,
    ProjectFeedCondition? condition,
    String? contentType,
    required String feedId,
    required ProjectFeedFeedOutputConfig feedOutputConfig,
    String? project,
  }) :
      assetNames = pulumi.Input.asOptionalInput<List<String>>(assetNames),
      assetTypes = pulumi.Input.asOptionalInput<List<String>>(assetTypes),
      billingProject = pulumi.Input.asOptionalInput<String>(billingProject),
      condition = pulumi.Input.asOptionalInput<ProjectFeedCondition>(condition),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      feedId = pulumi.Input.asInput<String>(feedId),
      feedOutputConfig = pulumi.Input.asInput<ProjectFeedFeedOutputConfig>(feedOutputConfig),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNames': ?assetNames,
      'assetTypes': ?assetTypes,
      'billingProject': ?billingProject,
      'condition': ?pulumi.Input.mapOptionalInputValue<ProjectFeedCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'contentType': ?contentType,
      'feedId': feedId,
      'feedOutputConfig': pulumi.Input.mapInputValue<ProjectFeedFeedOutputConfig, Map<String, dynamic>>(feedOutputConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory ProjectFeedArgs.fromMap(Map<String, dynamic> map) {
    return ProjectFeedArgs(
      assetNames: map['assetNames'] == null ? null : (map['assetNames'] as List).cast<String>(),
      assetTypes: map['assetTypes'] == null ? null : (map['assetTypes'] as List).cast<String>(),
      billingProject: map['billingProject'] == null ? null : map['billingProject'] as String,
      condition: map['condition'] == null ? null : ProjectFeedCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      feedId: map['feedId'] as String,
      feedOutputConfig: ProjectFeedFeedOutputConfig.fromMap((map['feedOutputConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

