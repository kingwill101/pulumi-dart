// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppGroupOrder {
  /// Whether to renew automatically. It only takes effect when the parameter payment_type takes the value `Subscription`.
  final pulumi.Input<bool>? autoRenew;
  /// Order cycle. The minimum value is not less than 0.
  final pulumi.Input<int>? duration;
  /// Order cycle unit. Valid values: `Year` and `Month`.
  final pulumi.Input<String>? pricingCycle;

  /// Creates a new [AppGroupOrder].
  /// [autoRenew] Whether to renew automatically. It only takes effect when the parameter payment_type takes the value `Subscription`.
  /// [duration] Order cycle. The minimum value is not less than 0.
  /// [pricingCycle] Order cycle unit. Valid values: `Year` and `Month`.
  AppGroupOrder({
    this.autoRenew,
    this.duration,
    this.pricingCycle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'duration': ?duration,
      'pricingCycle': ?pricingCycle,
    };
  }

  factory AppGroupOrder.fromMap(Map<String, dynamic> map) {
    return AppGroupOrder(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
    );
  }
}

