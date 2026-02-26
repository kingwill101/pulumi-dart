// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupNodeRepairConfigNodeRepairConfigOverride {
  /// Minimum time in minutes to wait before attempting to repair a node with the specified <span pulumi-lang-nodejs="`nodeMonitoringCondition`" pulumi-lang-dotnet="`NodeMonitoringCondition`" pulumi-lang-go="`nodeMonitoringCondition`" pulumi-lang-python="`node_monitoring_condition`" pulumi-lang-yaml="`nodeMonitoringCondition`" pulumi-lang-java="`nodeMonitoringCondition`">`node_monitoring_condition`</span> and <span pulumi-lang-nodejs="`nodeUnhealthyReason`" pulumi-lang-dotnet="`NodeUnhealthyReason`" pulumi-lang-go="`nodeUnhealthyReason`" pulumi-lang-python="`node_unhealthy_reason`" pulumi-lang-yaml="`nodeUnhealthyReason`" pulumi-lang-java="`nodeUnhealthyReason`">`node_unhealthy_reason`</span>.
  final int minRepairWaitTimeMins;

  /// Unhealthy condition reported by the node monitoring agent that this override applies to.
  final String nodeMonitoringCondition;

  /// Reason reported by the node monitoring agent that this override applies to.
  final String nodeUnhealthyReason;

  /// Repair action to take for nodes when all of the specified conditions are met. Valid values are defined by the EKS API.
  final String repairAction;

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
