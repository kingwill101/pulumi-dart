// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control_routing_control.dart';

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl {
  /// AWS region.
  final pulumi.Input<String> region;
  /// Routing controls. See `routingControl` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>?>? routingControls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl].
  /// [region] AWS region.
  /// [routingControls] Routing controls. See `routingControl` Block for details.
  const PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl({
    required this.region,
    this.routingControls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'routingControls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>, List<Map<String, dynamic>>>(routingControls, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl(
      region: pulumi.Input.fromValue(map['region'] as String),
      routingControls: (() { final guardedValue = map['routingControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
