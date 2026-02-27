// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_arc_routing_control_config_region_and_routing_control_routing_control/plan_workflow_step_arc_routing_control_config_region_and_routing_control_routing_control.dart';

class PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl {
  /// AWS region.
  final String region;

  /// List of routing controls. See Routing Control below.
  final List<
          PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>?
      routingControls;

  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl({
    required this.region,
    this.routingControls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    final routingControlsValue = routingControls;
    if (routingControlsValue != null) {
      map['routingControls'] = pulumi.Input.encodeList<
          PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl,
          Map<String, dynamic>>(routingControlsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl(
      region: map['region'] as String,
      routingControls: map['routingControls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>(
              map['routingControls'],
              (value) =>
                  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
