// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsComposer {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsComposer].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsComposer({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsComposer.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsComposer(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

