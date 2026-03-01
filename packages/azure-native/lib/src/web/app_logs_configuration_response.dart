// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_configuration_response.dart';

class AppLogsConfigurationResponse {
  final String? destination;
  final LogAnalyticsConfigurationResponse? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfigurationResponse].
  /// [destination] Optional.
  /// [logAnalyticsConfiguration] Optional.
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

