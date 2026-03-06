// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final pulumi.Input<String> serverGroupId;

  /// Creates a new [GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  const GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': serverGroupId,
    };
  }

  factory GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple(
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
    );
  }
}

