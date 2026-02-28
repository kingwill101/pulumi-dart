// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control_routing_control.dart';

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl {
  /// AWS region.
  final String region;

  /// List of routing controls. See Routing Control below.
  final List<
          PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>?
      routingControls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl].
  /// [region] AWS region.
  /// [routingControls] List of routing controls. See Routing Control below.
  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl({
    required this.region,
    this.routingControls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    final routingControlsValue = routingControls;
    if (routingControlsValue != null) {
      map['routingControls'] = pulumi.Input.encodeList<
          PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl,
          Map<String, dynamic>>(routingControlsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl(
      region: map['region'] as String,
      routingControls: map['routingControls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>(
              map['routingControls'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
