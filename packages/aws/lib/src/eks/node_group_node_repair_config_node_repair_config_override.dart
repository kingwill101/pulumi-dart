// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupNodeRepairConfigNodeRepairConfigOverride {
  /// Minimum time in minutes to wait before attempting to repair a node with the specified `node_monitoring_condition` and `node_unhealthy_reason`.
  final int minRepairWaitTimeMins;

  /// Unhealthy condition reported by the node monitoring agent that this override applies to.
  final String nodeMonitoringCondition;

  /// Reason reported by the node monitoring agent that this override applies to.
  final String nodeUnhealthyReason;

  /// Repair action to take for nodes when all of the specified conditions are met. Valid values are defined by the EKS API.
  final String repairAction;

  /// Creates a new [NodeGroupNodeRepairConfigNodeRepairConfigOverride].
  /// [minRepairWaitTimeMins] Minimum time in minutes to wait before attempting to repair a node with the specified `node_monitoring_condition` and `node_unhealthy_reason`.
  /// [nodeMonitoringCondition] Unhealthy condition reported by the node monitoring agent that this override applies to.
  /// [nodeUnhealthyReason] Reason reported by the node monitoring agent that this override applies to.
  /// [repairAction] Repair action to take for nodes when all of the specified conditions are met. Valid values are defined by the EKS API.
  NodeGroupNodeRepairConfigNodeRepairConfigOverride({
    required this.minRepairWaitTimeMins,
    required this.nodeMonitoringCondition,
    required this.nodeUnhealthyReason,
    required this.repairAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minRepairWaitTimeMins'] = minRepairWaitTimeMins;
    map['nodeMonitoringCondition'] = nodeMonitoringCondition;
    map['nodeUnhealthyReason'] = nodeUnhealthyReason;
    map['repairAction'] = repairAction;
    return map;
  }

  factory NodeGroupNodeRepairConfigNodeRepairConfigOverride.fromMap(
      Map<String, dynamic> map) {
    return NodeGroupNodeRepairConfigNodeRepairConfigOverride(
      minRepairWaitTimeMins: map['minRepairWaitTimeMins'] as int,
      nodeMonitoringCondition: map['nodeMonitoringCondition'] as String,
      nodeUnhealthyReason: map['nodeUnhealthyReason'] as String,
      repairAction: map['repairAction'] as String,
    );
  }
}
