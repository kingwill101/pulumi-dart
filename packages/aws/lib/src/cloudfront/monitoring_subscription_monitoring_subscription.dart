// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_subscription_monitoring_subscription_realtime_metrics_subscription_config.dart';

class MonitoringSubscriptionMonitoringSubscription {
  /// A subscription configuration for additional CloudWatch metrics. See below.
  final MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig
      realtimeMetricsSubscriptionConfig;

  /// Creates a new [MonitoringSubscriptionMonitoringSubscription].
  /// [realtimeMetricsSubscriptionConfig] A subscription configuration for additional CloudWatch metrics. See below.
  MonitoringSubscriptionMonitoringSubscription({
    required this.realtimeMetricsSubscriptionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['realtimeMetricsSubscriptionConfig'] =
        realtimeMetricsSubscriptionConfig.toMap();
    return map;
  }

  factory MonitoringSubscriptionMonitoringSubscription.fromMap(
      Map<String, dynamic> map) {
    return MonitoringSubscriptionMonitoringSubscription(
      realtimeMetricsSubscriptionConfig:
          MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig
              .fromMap((map['realtimeMetricsSubscriptionConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
