// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsDataFlow {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsDataFlow].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsDataFlow({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsDataFlow.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsDataFlow(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

