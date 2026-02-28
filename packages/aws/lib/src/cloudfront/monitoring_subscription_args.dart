// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_subscription_monitoring_subscription.dart';

/// {@template pulumi_cloudfront_monitoring_subscription_monitoring_subscription_args_doc}
/// The set of arguments for MonitoringSubscription.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_monitoring_subscription_monitoring_subscription_args_doc}
class MonitoringSubscriptionArgs {
  /// The ID of the distribution that you are enabling metrics for.
  final pulumi.Input<String> distributionId;
  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  final pulumi.Input<MonitoringSubscriptionMonitoringSubscription> monitoringSubscription;

  /// Creates a new [MonitoringSubscriptionArgs].
  /// [distributionId] The ID of the distribution that you are enabling metrics for.
  /// [monitoringSubscription] A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  MonitoringSubscriptionArgs({
    required String distributionId,
    required MonitoringSubscriptionMonitoringSubscription monitoringSubscription,
  }) :
      distributionId = pulumi.Input.asInput<String>(distributionId),
      monitoringSubscription = pulumi.Input.asInput<MonitoringSubscriptionMonitoringSubscription>(monitoringSubscription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionId': distributionId,
      'monitoringSubscription': pulumi.Input.mapInputValue<MonitoringSubscriptionMonitoringSubscription, Map<String, dynamic>>(monitoringSubscription, (value) => value.toMap()),
    };
  }

  factory MonitoringSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MonitoringSubscriptionArgs(
      distributionId: map['distributionId'] as String,
      monitoringSubscription: MonitoringSubscriptionMonitoringSubscription.fromMap((map['monitoringSubscription'] as Map).cast<String, dynamic>()),
    );
  }
}

