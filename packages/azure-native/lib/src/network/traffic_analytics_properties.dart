// ignore_for_file: unused_element, unnecessary_cast

import 'traffic_analytics_configuration_properties.dart';

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsProperties {
  /// Parameters that define the configuration of traffic analytics.
  final TrafficAnalyticsConfigurationProperties? networkWatcherFlowAnalyticsConfiguration;

  /// Creates a new [TrafficAnalyticsProperties].
  /// [networkWatcherFlowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  TrafficAnalyticsProperties({
    this.networkWatcherFlowAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherFlowAnalyticsConfiguration': ?networkWatcherFlowAnalyticsConfiguration == null ? null : networkWatcherFlowAnalyticsConfiguration!.toMap(),
    };
  }

  factory TrafficAnalyticsProperties.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsProperties(
      networkWatcherFlowAnalyticsConfiguration: map['networkWatcherFlowAnalyticsConfiguration'] == null ? null : TrafficAnalyticsConfigurationProperties.fromMap((map['networkWatcherFlowAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

