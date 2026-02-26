// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Subscription.
class SubscriptionArgs {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  final Input<String>? autoRenew;

  /// Skip attempting to disable automated renewal upon destruction. If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the <span pulumi-lang-nodejs="`autoRenew`" pulumi-lang-dotnet="`AutoRenew`" pulumi-lang-go="`autoRenew`" pulumi-lang-python="`auto_renew`" pulumi-lang-yaml="`autoRenew`" pulumi-lang-java="`autoRenew`">`auto_renew`</span> value will be left as-is and the resource will simply be removed from state.
  final Input<bool>? skipDestroy;

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
      autoRenew: Input.asOptionalInput<String>(map['autoRenew']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
    );
  }
}
