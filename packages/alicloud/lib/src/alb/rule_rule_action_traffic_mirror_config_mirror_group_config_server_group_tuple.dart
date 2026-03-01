// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final String? serverGroupId;

  /// Creates a new [RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple(
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId'] as String,
    );
  }
}

