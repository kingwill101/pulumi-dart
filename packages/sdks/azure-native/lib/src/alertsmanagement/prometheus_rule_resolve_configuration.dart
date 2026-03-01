// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the Prometheus alert rule configuration.
class PrometheusRuleResolveConfiguration {
  /// Enable alert auto-resolution.
  final bool? autoResolved;
  /// Alert auto-resolution timeout.
  final String? timeToResolve;

  /// Creates a new [PrometheusRuleResolveConfiguration].
  /// [autoResolved] Enable alert auto-resolution.
  /// [timeToResolve] Alert auto-resolution timeout.
  PrometheusRuleResolveConfiguration({
    this.autoResolved,
    this.timeToResolve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResolved': ?autoResolved,
      'timeToResolve': ?timeToResolve,
    };
  }

  factory PrometheusRuleResolveConfiguration.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleResolveConfiguration(
      autoResolved: map['autoResolved'] == null ? null : map['autoResolved'] as bool,
      timeToResolve: map['timeToResolve'] == null ? null : map['timeToResolve'] as String,
    );
  }
}

