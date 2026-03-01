// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsFunctions {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFunctions].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFunctions({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsFunctions.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFunctions(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

