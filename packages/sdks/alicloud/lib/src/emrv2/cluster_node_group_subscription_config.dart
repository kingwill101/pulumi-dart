// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupSubscriptionConfig {
  /// Auto pay order for payment type of subscription, ’true’ or ‘false’ .  Default value is ’true’.
  final bool? autoPayOrder;
  /// Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  final bool? autoRenew;
  /// If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  final int? autoRenewDuration;
  /// If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  final String? autoRenewDurationUnit;
  /// If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  final int paymentDuration;
  /// If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  final String paymentDurationUnit;

  /// Creates a new [ClusterNodeGroupSubscriptionConfig].
  /// [autoPayOrder] Auto pay order for payment type of subscription, ’true’ or ‘false’ .  Default value is ’true’.
  /// [autoRenew] Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  /// [autoRenewDuration] If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  /// [autoRenewDurationUnit] If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  /// [paymentDuration] If paymentType is Subscription, this should be specified. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36、48.
  /// [paymentDurationUnit] If paymentType is Subscription, this should be specified. Supported value: Month or Year.
  ClusterNodeGroupSubscriptionConfig({
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

  factory ClusterNodeGroupSubscriptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupSubscriptionConfig(
      autoPayOrder: map['autoPayOrder'] == null ? null : map['autoPayOrder'] as bool,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewDuration: map['autoRenewDuration'] == null ? null : map['autoRenewDuration'] as int,
      autoRenewDurationUnit: map['autoRenewDurationUnit'] == null ? null : map['autoRenewDurationUnit'] as String,
      paymentDuration: map['paymentDuration'] as int,
      paymentDurationUnit: map['paymentDurationUnit'] as String,
    );
  }
}

