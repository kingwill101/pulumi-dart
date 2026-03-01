// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsFireBaseDatabase {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireBaseDatabase].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireBaseDatabase({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsFireBaseDatabase.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireBaseDatabase(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

