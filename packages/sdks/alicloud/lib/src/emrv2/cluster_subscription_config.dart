// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSubscriptionConfig {
  /// Auto pay order for payment type of subscription, ’true’ or ‘false’ .  Default value is ’true’.
  final pulumi.Input<bool>? autoPayOrder;
  /// Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  final pulumi.Input<bool>? autoRenew;
  /// If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  final pulumi.Input<int>? autoRenewDuration;
  /// If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  final pulumi.Input<String>? autoRenewDurationUnit;
  /// If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  final pulumi.Input<int> paymentDuration;
  /// If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  final pulumi.Input<String> paymentDurationUnit;

  /// Creates a new [ClusterSubscriptionConfig].
  /// [autoPayOrder] Auto pay order for payment type of subscription, ’true’ or ‘false’ .  Default value is ’true’.
  /// [autoRenew] Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  /// [autoRenewDuration] If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  /// [autoRenewDurationUnit] If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  /// [paymentDuration] If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  /// [paymentDurationUnit] If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  ClusterSubscriptionConfig({
    this.autoPayOrder,
    this.autoRenew,
    this.autoRenewDuration,
    this.autoRenewDurationUnit,
    required this.paymentDuration,
    required this.paymentDurationUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPayOrder': ?autoPayOrder,
      'autoRenew': ?autoRenew,
      'autoRenewDuration': ?autoRenewDuration,
      'autoRenewDurationUnit': ?autoRenewDurationUnit,
      'paymentDuration': paymentDuration,
      'paymentDurationUnit': paymentDurationUnit,
    };
  }

  factory ClusterSubscriptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSubscriptionConfig(
      autoPayOrder: map['autoPayOrder'] == null ? null : (map['autoPayOrder'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration'] as int).input(),
      autoRenewDurationUnit: map['autoRenewDurationUnit'] == null ? null : (map['autoRenewDurationUnit'] as String).input(),
      paymentDuration: (map['paymentDuration'] as int).input(),
      paymentDurationUnit: (map['paymentDurationUnit'] as String).input(),
    );
  }
}

