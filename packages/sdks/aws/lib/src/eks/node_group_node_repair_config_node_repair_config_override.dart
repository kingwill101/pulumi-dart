// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupNodeRepairConfigNodeRepairConfigOverride {
  /// Minimum time in minutes to wait before attempting to repair a node with the specified `node_monitoring_condition` and `node_unhealthy_reason`.
  final pulumi.Input<int> minRepairWaitTimeMins;

  /// Unhealthy condition reported by the node monitoring agent that this override applies to.
  final pulumi.Input<String> nodeMonitoringCondition;

  /// Reason reported by the node monitoring agent that this override applies to.
  final pulumi.Input<String> nodeUnhealthyReason;

  /// Repair action to take for nodes when all of the specified conditions are met. Valid values are defined by the EKS API.
  final pulumi.Input<String> repairAction;

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
    return <String, dynamic>{
      'minRepairWaitTimeMins': minRepairWaitTimeMins,
      'nodeMonitoringCondition': nodeMonitoringCondition,
      'nodeUnhealthyReason': nodeUnhealthyReason,
      'repairAction': repairAction,
    };
  }

  factory NodeGroupNodeRepairConfigNodeRepairConfigOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeGroupNodeRepairConfigNodeRepairConfigOverride(
      minRepairWaitTimeMins: pulumi.Input.fromValue(
        map['minRepairWaitTimeMins'] as int,
      ),
      nodeMonitoringCondition: pulumi.Input.fromValue(
        map['nodeMonitoringCondition'] as String,
      ),
      nodeUnhealthyReason: pulumi.Input.fromValue(
        map['nodeUnhealthyReason'] as String,
      ),
      repairAction: pulumi.Input.fromValue(map['repairAction'] as String),
    );
  }
}
