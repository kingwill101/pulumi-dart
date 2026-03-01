// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_entity_insights_args_doc}
/// Arguments for getEntityInsights.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_entity_insights_args_doc}
class GetEntityInsightsArgs {
  /// Indicates if query time range should be extended with default time range of the query. Default value is false
  final pulumi.Input<bool>? addDefaultExtendedTimeRange;
  /// The end timeline date, so the results returned are before this date.
  final pulumi.Input<String> endTime;
  /// entity ID
  final pulumi.Input<String> entityId;
  /// List of Insights Query Id. If empty, default value is all insights of this entity
  final pulumi.Input<List<String>>? insightQueryIds;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The start timeline date, so the results returned are after this date.
  final pulumi.Input<String> startTime;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEntityInsightsArgs].
  /// [addDefaultExtendedTimeRange] Indicates if query time range should be extended with default time range of the query. Default value is false
  /// [endTime] The end timeline date, so the results returned are before this date.
  /// [entityId] entity ID
  /// [insightQueryIds] List of Insights Query Id. If empty, default value is all insights of this entity
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTime] The start timeline date, so the results returned are after this date.
  /// [workspaceName] The name of the workspace.
  GetEntityInsightsArgs({
    bool? addDefaultExtendedTimeRange,
    required String endTime,
    required String entityId,
    List<String>? insightQueryIds,
    required String resourceGroupName,
    required String startTime,
    required String workspaceName,
  }) :
      addDefaultExtendedTimeRange = pulumi.Input.asOptionalInput<bool>(addDefaultExtendedTimeRange),
      endTime = pulumi.Input.asInput<String>(endTime),
      entityId = pulumi.Input.asInput<String>(entityId),
      insightQueryIds = pulumi.Input.asOptionalInput<List<String>>(insightQueryIds),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTime = pulumi.Input.asInput<String>(startTime),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addDefaultExtendedTimeRange': ?addDefaultExtendedTimeRange,
      'endTime': endTime,
      'entityId': entityId,
      'insightQueryIds': ?insightQueryIds,
      'resourceGroupName': resourceGroupName,
      'startTime': startTime,
      'workspaceName': workspaceName,
    };
  }

  factory GetEntityInsightsArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityInsightsArgs(
      addDefaultExtendedTimeRange: map['addDefaultExtendedTimeRange'] == null ? null : map['addDefaultExtendedTimeRange'] as bool,
      endTime: map['endTime'] as String,
      entityId: map['entityId'] as String,
      insightQueryIds: map['insightQueryIds'] == null ? null : (map['insightQueryIds'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      startTime: map['startTime'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

