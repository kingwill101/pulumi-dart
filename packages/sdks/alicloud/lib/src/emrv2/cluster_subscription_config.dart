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
      autoPayOrder: (() {
        final guardedValue = map['autoPayOrder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenewDuration: (() {
        final guardedValue = map['autoRenewDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      autoRenewDurationUnit: (() {
        final guardedValue = map['autoRenewDurationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentDuration: pulumi.Input.fromValue(map['paymentDuration'] as int),
      paymentDurationUnit: pulumi.Input.fromValue(
        map['paymentDurationUnit'] as String,
      ),
    );
  }
}
