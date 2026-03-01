// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_configuration.dart';

/// Configuration of application logs
class AppLogsConfiguration {
  /// Logs destination, can be 'log-analytics', 'azure-monitor' or 'none'
  final String? destination;
  /// Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
  final LogAnalyticsConfiguration? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfiguration].
  /// [destination] Logs destination, can be 'log-analytics', 'azure-monitor' or 'none'
  /// [logAnalyticsConfiguration] Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
  AppLogsConfiguration({
    this.destination,
    this.logAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'logAnalyticsConfiguration': ?logAnalyticsConfiguration == null ? null : logAnalyticsConfiguration!.toMap(),
    };
  }

  factory AppLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return AppLogsConfiguration(
      destination: map['destination'] == null ? null : map['destination'] as String,
      logAnalyticsConfiguration: map['logAnalyticsConfiguration'] == null ? null : LogAnalyticsConfiguration.fromMap((map['logAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

