// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final String serverGroupId;

  /// Creates a new [GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': serverGroupId,
    };
  }

  factory GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple(
      serverGroupId: map['serverGroupId'] as String,
    );
  }
}

