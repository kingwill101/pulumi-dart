// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference {
  /// Set of Managed Prefix IP ARN(s)
  final pulumi.Input<String> referenceArn;

  /// Creates a new [RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference].
  /// [referenceArn] Set of Managed Prefix IP ARN(s)
  RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference({
    required this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceArn': referenceArn,
    };
  }

  factory RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference(
      referenceArn: pulumi.Input.fromValue(map['referenceArn'] as String),
    );
  }
}

