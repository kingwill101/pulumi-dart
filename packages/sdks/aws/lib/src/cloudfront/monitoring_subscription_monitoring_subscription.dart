// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_subscription_monitoring_subscription_realtime_metrics_subscription_config.dart';

class MonitoringSubscriptionMonitoringSubscription {
  /// A subscription configuration for additional CloudWatch metrics. See below.
  final pulumi.Input<
    MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig
  >
  realtimeMetricsSubscriptionConfig;

  /// Creates a new [MonitoringSubscriptionMonitoringSubscription].
  /// [realtimeMetricsSubscriptionConfig] A subscription configuration for additional CloudWatch metrics. See below.
  MonitoringSubscriptionMonitoringSubscription({
    required this.realtimeMetricsSubscriptionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'realtimeMetricsSubscriptionConfig':
          pulumi.Input.mapInputValue<
            MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig,
            Map<String, dynamic>
          >(realtimeMetricsSubscriptionConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringSubscriptionMonitoringSubscription.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringSubscriptionMonitoringSubscription(
      realtimeMetricsSubscriptionConfig: pulumi.Input.fromValue(
        MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig.fromMap(
          (map['realtimeMetricsSubscriptionConfig']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
