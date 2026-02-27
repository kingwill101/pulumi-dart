// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Subscription.
class SubscriptionArgs {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  final pulumi.Input<String>? autoRenew;

  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  final pulumi.Input<bool>? skipDestroy;

  SubscriptionArgs({
    this.autoRenew,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    return map;
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoRenew: pulumi.Input.asOptionalInput<String>(map['autoRenew']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
    );
  }
}
