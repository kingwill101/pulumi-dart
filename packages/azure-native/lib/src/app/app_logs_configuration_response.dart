// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_configuration_response.dart';

/// Configuration of application logs
class AppLogsConfigurationResponse {
  /// Logs destination, can be 'log-analytics', 'azure-monitor' or 'none'
  final String? destination;
  /// Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
  final LogAnalyticsConfigurationResponse? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfigurationResponse].
  /// [destination] Logs destination, can be 'log-analytics', 'azure-monitor' or 'none'
  /// [logAnalyticsConfiguration] Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
  AppLogsConfigurationResponse({
    this.destination,
    this.logAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'logAnalyticsConfiguration': ?logAnalyticsConfiguration == null ? null : logAnalyticsConfiguration!.toMap(),
    };
  }

  factory AppLogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AppLogsConfigurationResponse(
      destination: map['destination'] == null ? null : map['destination'] as String,
      logAnalyticsConfiguration: map['logAnalyticsConfiguration'] == null ? null : LogAnalyticsConfigurationResponse.fromMap((map['logAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

