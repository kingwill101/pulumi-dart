// ignore_for_file: unused_element, unnecessary_cast

class MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig {
  /// A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution. Valid values are `Enabled` and `Disabled`. See below.
  final String realtimeMetricsSubscriptionStatus;

  /// Creates a new [MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig].
  /// [realtimeMetricsSubscriptionStatus] A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution. Valid values are `Enabled` and `Disabled`. See below.
  MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig({
    required this.realtimeMetricsSubscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['realtimeMetricsSubscriptionStatus'] =
        realtimeMetricsSubscriptionStatus;
    return map;
  }

  factory MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig.fromMap(
      Map<String, dynamic> map) {
    return MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig(
      realtimeMetricsSubscriptionStatus:
          map['realtimeMetricsSubscriptionStatus'] as String,
    );
  }
}
