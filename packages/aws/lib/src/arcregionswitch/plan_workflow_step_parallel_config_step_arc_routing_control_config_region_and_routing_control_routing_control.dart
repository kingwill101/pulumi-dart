// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl {
  /// ARN of the routing control.
  final String routingControlArn;

  /// State of the routing control. Valid values: `On`, `Off`.
  final String state;

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
      routingControlArn: map['routingControlArn'] as String,
      state: map['state'] as String,
    );
  }
}
