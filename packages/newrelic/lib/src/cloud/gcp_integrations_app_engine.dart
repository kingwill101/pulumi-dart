// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsAppEngine {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsAppEngine].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsAppEngine({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsAppEngine.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsAppEngine(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

