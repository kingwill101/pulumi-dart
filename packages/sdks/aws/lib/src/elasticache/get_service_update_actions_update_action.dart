// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceUpdateActionsUpdateAction {
  /// ID of Cache Cluster to list updates for. If neither `cacheClusterId` nor `replicationGroupId` are specified, all service update actions will be listed.
  final pulumi.Input<String> cacheClusterId;
  /// Engine this update applies to.
  final pulumi.Input<String> engine;
  /// Estimated duration of update.
  final pulumi.Input<String> estimatedUpdateTime;
  /// Date the update should be applied by.
  final pulumi.Input<String> recommendedApplyByDate;
  /// Date the update was released.
  final pulumi.Input<String> releaseDate;
  /// ID of Replication Group to list updates for. If neither `replicationGroupId` nor `cacheClusterId` are specified, all service update actions will be listed.
  final pulumi.Input<String> replicationGroupId;
  /// Name of the update.
  final pulumi.Input<String> serviceUpdateName;
  /// Severity of the update. One of `critical`, `important`, `medium`, or `low`.
  final pulumi.Input<String> serviceUpdateSeverity;
  /// Service update statuses to include in list. Valid values are `available`, `cancelled`, and `expired`. If no value is specified, service updates in all statuses will be listed.
  final pulumi.Input<String> serviceUpdateStatus;
  /// Type of the update.
  final pulumi.Input<String> serviceUpdateType;
  /// Status of the update action.
  final pulumi.Input<String> updateActionStatus;

  /// Creates a new [GetServiceUpdateActionsUpdateAction].
  /// [cacheClusterId] ID of Cache Cluster to list updates for. If neither `cacheClusterId` nor `replicationGroupId` are specified, all service update actions will be listed.
  /// [engine] Engine this update applies to.
  /// [estimatedUpdateTime] Estimated duration of update.
  /// [recommendedApplyByDate] Date the update should be applied by.
  /// [releaseDate] Date the update was released.
  /// [replicationGroupId] ID of Replication Group to list updates for. If neither `replicationGroupId` nor `cacheClusterId` are specified, all service update actions will be listed.
  /// [serviceUpdateName] Name of the update.
  /// [serviceUpdateSeverity] Severity of the update. One of `critical`, `important`, `medium`, or `low`.
  /// [serviceUpdateStatus] Service update statuses to include in list. Valid values are `available`, `cancelled`, and `expired`. If no value is specified, service updates in all statuses will be listed.
  /// [serviceUpdateType] Type of the update.
  /// [updateActionStatus] Status of the update action.
  const GetServiceUpdateActionsUpdateAction({
    required this.cacheClusterId,
    required this.engine,
    required this.estimatedUpdateTime,
    required this.recommendedApplyByDate,
    required this.releaseDate,
    required this.replicationGroupId,
    required this.serviceUpdateName,
    required this.serviceUpdateSeverity,
    required this.serviceUpdateStatus,
    required this.serviceUpdateType,
    required this.updateActionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheClusterId': cacheClusterId,
      'engine': engine,
      'estimatedUpdateTime': estimatedUpdateTime,
      'recommendedApplyByDate': recommendedApplyByDate,
      'releaseDate': releaseDate,
      'replicationGroupId': replicationGroupId,
      'serviceUpdateName': serviceUpdateName,
      'serviceUpdateSeverity': serviceUpdateSeverity,
      'serviceUpdateStatus': serviceUpdateStatus,
      'serviceUpdateType': serviceUpdateType,
      'updateActionStatus': updateActionStatus,
    };
  }

  factory GetServiceUpdateActionsUpdateAction.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdateActionsUpdateAction(
      cacheClusterId: pulumi.Input.fromValue(map['cacheClusterId'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      estimatedUpdateTime: pulumi.Input.fromValue(map['estimatedUpdateTime'] as String),
      recommendedApplyByDate: pulumi.Input.fromValue(map['recommendedApplyByDate'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
      replicationGroupId: pulumi.Input.fromValue(map['replicationGroupId'] as String),
      serviceUpdateName: pulumi.Input.fromValue(map['serviceUpdateName'] as String),
      serviceUpdateSeverity: pulumi.Input.fromValue(map['serviceUpdateSeverity'] as String),
      serviceUpdateStatus: pulumi.Input.fromValue(map['serviceUpdateStatus'] as String),
      serviceUpdateType: pulumi.Input.fromValue(map['serviceUpdateType'] as String),
      updateActionStatus: pulumi.Input.fromValue(map['updateActionStatus'] as String),
    );
  }
}
