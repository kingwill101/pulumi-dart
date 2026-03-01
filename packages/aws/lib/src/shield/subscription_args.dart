// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_shield_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  final pulumi.Input<String>? autoRenew;
  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [SubscriptionArgs].
  /// [autoRenew] Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  /// [skipDestroy] Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  SubscriptionArgs({
    String? autoRenew,
    bool? skipDestroy,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<String>(autoRenew),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as String,
      skipDestroy: map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
    );
  }
}

