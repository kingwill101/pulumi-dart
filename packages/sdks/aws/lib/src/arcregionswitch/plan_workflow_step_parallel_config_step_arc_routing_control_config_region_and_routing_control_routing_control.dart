// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl {
  /// ARN of the routing control.
  final pulumi.Input<String> routingControlArn;

  /// State of the routing control. Valid values: `On`, `Off`.
  final pulumi.Input<String> state;

  /// Creates a new [PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl].
  /// [routingControlArn] ARN of the routing control.
  /// [state] State of the routing control. Valid values: `On`, `Off`.
  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingControlArn': routingControlArn,
      'state': state,
    };
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl(
      routingControlArn: pulumi.Input.fromValue(
        map['routingControlArn'] as String,
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
