// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference {
  /// Set of Managed Prefix IP ARN(s)
  final String referenceArn;

  RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference({
    required this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['referenceArn'] = referenceArn;
    return map;
  }

  factory RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference(
      referenceArn: map['referenceArn'] as String,
    );
  }
}
