// ignore_for_file: unused_element, unnecessary_cast


/// Describes the ICMP configuration.
class ConnectionMonitorIcmpConfiguration {
  /// Value indicating whether path evaluation with trace route should be disabled.
  final bool? disableTraceRoute;

  /// Creates a new [ConnectionMonitorIcmpConfiguration].
  /// [disableTraceRoute] Value indicating whether path evaluation with trace route should be disabled.
  ConnectionMonitorIcmpConfiguration({
    this.disableTraceRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableTraceRoute': ?disableTraceRoute,
    };
  }

  factory ConnectionMonitorIcmpConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorIcmpConfiguration(
      disableTraceRoute: map['disableTraceRoute'] == null ? null : map['disableTraceRoute'] as bool,
    );
  }
}

