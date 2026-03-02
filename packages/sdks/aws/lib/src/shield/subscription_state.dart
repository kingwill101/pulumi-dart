// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  final pulumi.Input<String>? autoRenew;
  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [SubscriptionState].
  /// [autoRenew] Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  /// [skipDestroy] Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  SubscriptionState({
    this.autoRenew,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
    );
  }
}

