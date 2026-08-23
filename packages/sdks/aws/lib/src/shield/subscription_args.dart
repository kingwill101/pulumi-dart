// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_shield_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  final pulumi.Input<String>? autoRenew;
  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `autoRenew` value will be left as-is and the resource will simply be removed from state.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [SubscriptionArgs].
  /// [autoRenew] Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  /// [skipDestroy] Skip attempting to disable automated renewal upon destruction. If set to `true`, the `autoRenew` value will be left as-is and the resource will simply be removed from state.
  const SubscriptionArgs({
    this.autoRenew,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
