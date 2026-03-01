// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_control_policy_order_control_policy_order_args_doc}
/// The set of arguments for ControlPolicyOrder.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_control_policy_order_control_policy_order_args_doc}
class ControlPolicyOrderArgs {
  /// The unique ID of the access control policy.
  final pulumi.Input<String> aclUuid;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String> direction;
  /// The priority of the access control policy. The priority value starts from 1. A small priority value indicates a high priority. **NOTE:** The value of `-1` indicates the lowest priority.
  /// > **NOTE:** From version 1.227.1, `order` must be set.
  final pulumi.Input<int> order;

  /// Creates a new [ControlPolicyOrderArgs].
  /// [aclUuid] The unique ID of the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [order] The priority of the access control policy. The priority value starts from 1. A small priority value indicates a high priority. **NOTE:** The value of `-1` indicates the lowest priority.
  ControlPolicyOrderArgs({
    required String aclUuid,
    required String direction,
    required int order,
  }) :
      aclUuid = pulumi.Input.asInput<String>(aclUuid),
      direction = pulumi.Input.asInput<String>(direction),
      order = pulumi.Input.asInput<int>(order);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclUuid': aclUuid,
      'direction': direction,
      'order': order,
    };
  }

  factory ControlPolicyOrderArgs.fromMap(Map<String, dynamic> map) {
    return ControlPolicyOrderArgs(
      aclUuid: map['aclUuid'] as String,
      direction: map['direction'] as String,
      order: map['order'] as int,
    );
  }
}

