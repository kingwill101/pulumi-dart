// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../monitoring_subscription_monitoring_subscription/monitoring_subscription_monitoring_subscription.dart';

/// The set of arguments for MonitoringSubscription.
class MonitoringSubscriptionArgs {
  /// The ID of the distribution that you are enabling metrics for.
  final pulumi.Input<String> distributionId;

  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  final pulumi.Input<MonitoringSubscriptionMonitoringSubscription>
      monitoringSubscription;

  MonitoringSubscriptionArgs({
    required this.distributionId,
    required this.monitoringSubscription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributionId'] = distributionId;
    map['monitoringSubscription'] = pulumi.Input.mapInputValue<
        MonitoringSubscriptionMonitoringSubscription,
        Map<String, dynamic>>(monitoringSubscription, (value) => value.toMap());
    return map;
  }

  factory MonitoringSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MonitoringSubscriptionArgs(
      distributionId: pulumi.Input.asInput<String>(map['distributionId']),
      monitoringSubscription:
          pulumi.Input.asInput<MonitoringSubscriptionMonitoringSubscription>(
              map['monitoringSubscription']),
    );
  }
}
