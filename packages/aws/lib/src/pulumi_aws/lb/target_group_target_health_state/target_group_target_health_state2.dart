// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetHealthState2 {
  /// Indicates whether the load balancer terminates connections to unhealthy targets. Possible values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool enableUnhealthyConnectionTermination;

  /// Indicates the time to wait for in-flight requests to complete when a target becomes unhealthy. The range is `0-360000`. This value has to be set only if <span pulumi-lang-nodejs="`enableUnhealthyConnectionTermination`" pulumi-lang-dotnet="`EnableUnhealthyConnectionTermination`" pulumi-lang-go="`enableUnhealthyConnectionTermination`" pulumi-lang-python="`enable_unhealthy_connection_termination`" pulumi-lang-yaml="`enableUnhealthyConnectionTermination`" pulumi-lang-java="`enableUnhealthyConnectionTermination`">`enable_unhealthy_connection_termination`</span> is set to false. Default: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
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
