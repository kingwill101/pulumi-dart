// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_arc_routing_control_config_region_and_routing_control_routing_control.dart';

class PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl {
  /// AWS region.
  final pulumi.Input<String> region;
  /// List of routing controls. See Routing Control below.
  final pulumi.Input<List<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>>? routingControls;

  /// Creates a new [PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl].
  /// [region] AWS region.
  /// [routingControls] List of routing controls. See Routing Control below.
  const PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl({
    required this.region,
    this.routingControls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'routingControls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>, List<Map<String, dynamic>>>(routingControls, (value) => pulumi.Input.encodeList<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl(
      region: pulumi.Input.fromValue(map['region'] as String),
      routingControls: (() { final guardedValue = map['routingControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl>(guardedValue, (value) => PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

