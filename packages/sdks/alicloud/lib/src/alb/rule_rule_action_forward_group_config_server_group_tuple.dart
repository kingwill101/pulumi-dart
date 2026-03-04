// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionForwardGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final pulumi.Input<String>? serverGroupId;

  /// The Weight of server group. Default value: `100`. Valid values: `0` to `100`.
  /// **NOTE:** `weight` is required when the number of `server_group_tuples` is greater than 2. From version 1.264.0, `weight` can be set to `0`.
  final pulumi.Input<int>? weight;

  /// Creates a new [RuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  /// [weight] The Weight of server group. Default value: `100`. Valid values: `0` to `100`.
  RuleRuleActionForwardGroupConfigServerGroupTuple({
    this.serverGroupId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
      'weight': ?weight,
    };
  }

  factory RuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleRuleActionForwardGroupConfigServerGroupTuple(
      serverGroupId: (() {
        final guardedValue = map['serverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
