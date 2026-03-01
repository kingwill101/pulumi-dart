// ignore_for_file: unused_element, unnecessary_cast

import 'traffic_analytics_configuration_properties_response.dart';

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsPropertiesResponse {
  /// Parameters that define the configuration of traffic analytics.
  final TrafficAnalyticsConfigurationPropertiesResponse? networkWatcherFlowAnalyticsConfiguration;

  /// Creates a new [TrafficAnalyticsPropertiesResponse].
  /// [networkWatcherFlowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  TrafficAnalyticsPropertiesResponse({
    this.networkWatcherFlowAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherFlowAnalyticsConfiguration': ?networkWatcherFlowAnalyticsConfiguration == null ? null : networkWatcherFlowAnalyticsConfiguration!.toMap(),
    };
  }

  factory TrafficAnalyticsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsPropertiesResponse(
      networkWatcherFlowAnalyticsConfiguration: map['networkWatcherFlowAnalyticsConfiguration'] == null ? null : TrafficAnalyticsConfigurationPropertiesResponse.fromMap((map['networkWatcherFlowAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

