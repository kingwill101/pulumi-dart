// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl {
  /// ARN of the routing control.
  final String routingControlArn;

  /// State of the routing control. Valid values: `On`, `Off`.
  final String state;

  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['routingControlArn'] = routingControlArn;
    map['state'] = state;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl(
      routingControlArn: map['routingControlArn'] as String,
      state: map['state'] as String,
    );
  }
}
