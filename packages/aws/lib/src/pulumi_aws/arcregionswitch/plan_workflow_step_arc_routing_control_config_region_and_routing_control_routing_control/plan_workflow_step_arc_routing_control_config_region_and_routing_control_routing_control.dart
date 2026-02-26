// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl {
  /// ARN of the routing control.
  final String routingControlArn;

  /// State of the routing control. Valid values: `On`, `Off`.
  final String state;

  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['routingControlArn'] = routingControlArn;
    map['state'] = state;
    return map;
  }

  factory PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlRoutingControl(
      routingControlArn: map['routingControlArn'] as String,
      state: map['state'] as String,
    );
  }
}
