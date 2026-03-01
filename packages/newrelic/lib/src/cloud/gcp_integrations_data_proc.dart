// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsDataProc {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsDataProc].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsDataProc({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsDataProc.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsDataProc(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

