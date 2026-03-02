// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_subscription_monitoring_subscription.dart';

/// Input properties used for looking up and filtering MonitoringSubscription resources.
class MonitoringSubscriptionState {
  /// The ID of the distribution that you are enabling metrics for.
  final pulumi.Input<String>? distributionId;
  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  final pulumi.Input<MonitoringSubscriptionMonitoringSubscription>? monitoringSubscription;

  /// Creates a new [MonitoringSubscriptionState].
  /// [distributionId] The ID of the distribution that you are enabling metrics for.
  /// [monitoringSubscription] A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  MonitoringSubscriptionState({
    this.distributionId,
    this.monitoringSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionId': ?distributionId,
      'monitoringSubscription': ?pulumi.Input.mapOptionalInputValue<MonitoringSubscriptionMonitoringSubscription, Map<String, dynamic>>(monitoringSubscription, (value) => value.toMap()),
    };
  }

  factory MonitoringSubscriptionState.fromMap(Map<String, dynamic> map) {
    return MonitoringSubscriptionState(
      distributionId: map['distributionId'] == null ? null : ((map['distributionId'] as String).input()).input(),
      monitoringSubscription: map['monitoringSubscription'] == null ? null : ((MonitoringSubscriptionMonitoringSubscription.fromMap((map['monitoringSubscription']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

