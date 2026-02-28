// ignore_for_file: unused_element, unnecessary_cast


class ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration {
  /// The Prometheus remote write URL for sending metrics. Only supported in EMR 7.1.0 and later versions.
  final String? remoteWriteUrl;

  /// Creates a new [ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration].
  /// [remoteWriteUrl] The Prometheus remote write URL for sending metrics. Only supported in EMR 7.1.0 and later versions.
  ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration({
    this.remoteWriteUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteWriteUrl': ?remoteWriteUrl,
    };
  }

  factory ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration(
      remoteWriteUrl: map['remoteWriteUrl'] == null ? null : map['remoteWriteUrl'] as String,
    );
  }
}

