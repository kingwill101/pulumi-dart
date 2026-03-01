// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference {
  /// Set of Managed Prefix IP ARN(s)
  final String referenceArn;

  /// Creates a new [RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference].
  /// [referenceArn] Set of Managed Prefix IP ARN(s)
  RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference({
    required this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'referenceArn': referenceArn};
  }

  factory RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference(
      referenceArn: map['referenceArn'] as String,
    );
  }
}
