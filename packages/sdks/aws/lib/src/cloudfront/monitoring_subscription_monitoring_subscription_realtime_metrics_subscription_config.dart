// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig {
  /// A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution. Valid values are `Enabled` and `Disabled`. See below.
  final pulumi.Input<String> realtimeMetricsSubscriptionStatus;

  /// Creates a new [MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig].
  /// [realtimeMetricsSubscriptionStatus] A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution. Valid values are `Enabled` and `Disabled`. See below.
  MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig({
    required this.realtimeMetricsSubscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'realtimeMetricsSubscriptionStatus': realtimeMetricsSubscriptionStatus,
    };
  }

  factory MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig(
      realtimeMetricsSubscriptionStatus: pulumi.Input.fromValue(map['realtimeMetricsSubscriptionStatus'] as String),
    );
  }
}

