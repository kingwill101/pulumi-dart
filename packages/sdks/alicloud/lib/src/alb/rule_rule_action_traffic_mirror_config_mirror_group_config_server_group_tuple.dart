// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final pulumi.Input<String>? serverGroupId;

  /// Creates a new [RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  const RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple(
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

