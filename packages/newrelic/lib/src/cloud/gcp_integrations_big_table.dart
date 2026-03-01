// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsBigTable {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsBigTable].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsBigTable({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsBigTable.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsBigTable(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

