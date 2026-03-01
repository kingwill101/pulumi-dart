// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsAlloyDb {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsAlloyDb].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsAlloyDb({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsAlloyDb.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsAlloyDb(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

