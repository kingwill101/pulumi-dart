// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetHealthState2 {
  /// Indicates whether the load balancer terminates connections to unhealthy targets. Possible values are `true` or `false`. Default: `true`.
  final bool enableUnhealthyConnectionTermination;

  /// Indicates the time to wait for in-flight requests to complete when a target becomes unhealthy. The range is `0-360000`. This value has to be set only if `enable_unhealthy_connection_termination` is set to false. Default: `0`.
  final int? unhealthyDrainingInterval;

  TargetGroupTargetHealthState2({
    required this.enableUnhealthyConnectionTermination,
    this.unhealthyDrainingInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableUnhealthyConnectionTermination'] =
        enableUnhealthyConnectionTermination;
    final unhealthyDrainingIntervalValue = unhealthyDrainingInterval;
    if (unhealthyDrainingIntervalValue != null) {
      map['unhealthyDrainingInterval'] = unhealthyDrainingIntervalValue;
    }
    return map;
  }

  factory TargetGroupTargetHealthState2.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetHealthState2(
      enableUnhealthyConnectionTermination:
          map['enableUnhealthyConnectionTermination'] as bool,
      unhealthyDrainingInterval: map['unhealthyDrainingInterval'] == null
          ? null
          : map['unhealthyDrainingInterval'] as int,
    );
  }
}
