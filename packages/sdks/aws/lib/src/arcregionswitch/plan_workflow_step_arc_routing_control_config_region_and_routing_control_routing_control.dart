// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl {
  /// ARN of the routing control.
  final pulumi.Input<String> routingControlArn;
  /// State of the routing control. Valid values: `On`, `Off`.
  final pulumi.Input<String> state;

  /// Creates a new [PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl].
  /// [routingControlArn] ARN of the routing control.
  /// [state] State of the routing control. Valid values: `On`, `Off`.
  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingControlArn': routingControlArn,
      'state': state,
    };
  }

  factory PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl(
      routingControlArn: (map['routingControlArn'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

