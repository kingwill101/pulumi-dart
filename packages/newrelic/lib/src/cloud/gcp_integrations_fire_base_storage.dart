// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsFireBaseStorage {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireBaseStorage].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireBaseStorage({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsFireBaseStorage.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireBaseStorage(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

