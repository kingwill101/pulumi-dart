// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupTargetHealthState {
  /// Indicates whether the load balancer terminates connections to unhealthy targets. Possible values are `true` or `false`. Default: `true`.
  final pulumi.Input<bool> enableUnhealthyConnectionTermination;

  /// Indicates the time to wait for in-flight requests to complete when a target becomes unhealthy. The range is `0-360000`. This value has to be set only if `enable_unhealthy_connection_termination` is set to false. Default: `0`.
  final pulumi.Input<int>? unhealthyDrainingInterval;

  /// Creates a new [TargetGroupTargetHealthState].
  /// [enableUnhealthyConnectionTermination] Indicates whether the load balancer terminates connections to unhealthy targets. Possible values are `true` or `false`. Default: `true`.
  /// [unhealthyDrainingInterval] Indicates the time to wait for in-flight requests to complete when a target becomes unhealthy. The range is `0-360000`. This value has to be set only if `enable_unhealthy_connection_termination` is set to false. Default: `0`.
  TargetGroupTargetHealthState({
    required this.enableUnhealthyConnectionTermination,
    this.unhealthyDrainingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableUnhealthyConnectionTermination':
          enableUnhealthyConnectionTermination,
      'unhealthyDrainingInterval': ?unhealthyDrainingInterval,
    };
  }

  factory TargetGroupTargetHealthState.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetHealthState(
      enableUnhealthyConnectionTermination: pulumi.Input.fromValue(
        map['enableUnhealthyConnectionTermination'] as bool,
      ),
      unhealthyDrainingInterval: (() {
        final guardedValue = map['unhealthyDrainingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
