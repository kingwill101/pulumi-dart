// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupInstanceLifecyclePolicyRetentionTriggers {
  /// Action to take when a termination lifecycle hook is abandoned due to failure, timeout, or explicit abandonment. Valid values are `retain` and `terminate`. Set to `retain` to move instances to a retained state instead of terminating them. Retained instances don't count toward desired capacity and remain until you terminate them.
  final pulumi.Input<String?>? terminateHookAbandon;

  /// Creates a new [GroupInstanceLifecyclePolicyRetentionTriggers].
  /// [terminateHookAbandon] Action to take when a termination lifecycle hook is abandoned due to failure, timeout, or explicit abandonment. Valid values are `retain` and `terminate`. Set to `retain` to move instances to a retained state instead of terminating them. Retained instances don't count toward desired capacity and remain until you terminate them.
  const GroupInstanceLifecyclePolicyRetentionTriggers({
    this.terminateHookAbandon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminateHookAbandon': ?terminateHookAbandon,
    };
  }

  factory GroupInstanceLifecyclePolicyRetentionTriggers.fromMap(Map<String, dynamic> map) {
    return GroupInstanceLifecyclePolicyRetentionTriggers(
      terminateHookAbandon: (() { final guardedValue = map['terminateHookAbandon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
