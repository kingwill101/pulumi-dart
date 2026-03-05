// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration {
  /// The Prometheus remote write URL for sending metrics. Only supported in EMR 7.1.0 and later versions.
  final pulumi.Input<String>? remoteWriteUrl;

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
      remoteWriteUrl: (() { final guardedValue = map['remoteWriteUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

