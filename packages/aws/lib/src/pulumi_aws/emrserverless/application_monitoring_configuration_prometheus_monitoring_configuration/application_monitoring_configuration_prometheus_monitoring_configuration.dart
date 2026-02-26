// ignore_for_file: unused_element, unnecessary_cast

class ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration {
  /// The Prometheus remote write URL for sending metrics. Only supported in EMR 7.1.0 and later versions.
  final String? remoteWriteUrl;

  ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration({
    this.remoteWriteUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final remoteWriteUrlValue = remoteWriteUrl;
    if (remoteWriteUrlValue != null) {
      map['remoteWriteUrl'] = remoteWriteUrlValue;
    }
    return map;
  }

  factory ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration(
      remoteWriteUrl: map['remoteWriteUrl'] == null
          ? null
          : map['remoteWriteUrl'] as String,
    );
  }
}
