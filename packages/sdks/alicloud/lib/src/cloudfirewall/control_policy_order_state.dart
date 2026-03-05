// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPolicyOrder resources.
class ControlPolicyOrderState {
  /// The unique ID of the access control policy.
  final pulumi.Input<String>? aclUuid;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String>? direction;
  /// The priority of the access control policy. The priority value starts from 1. A small priority value indicates a high priority. **NOTE:** The value of `-1` indicates the lowest priority.
  /// &gt; **NOTE:** From version 1.227.1, `order` must be set.
  final pulumi.Input<int>? order;

  /// Creates a new [ControlPolicyOrderState].
  /// [aclUuid] The unique ID of the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [order] The priority of the access control policy. The priority value starts from 1. A small priority value indicates a high priority. **NOTE:** The value of `-1` indicates the lowest priority.
  ControlPolicyOrderState({
    this.aclUuid,
    this.direction,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclUuid': ?aclUuid,
      'direction': ?direction,
      'order': ?order,
    };
  }

  factory ControlPolicyOrderState.fromMap(Map<String, dynamic> map) {
    return ControlPolicyOrderState(
      aclUuid: (() { final guardedValue = map['aclUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

