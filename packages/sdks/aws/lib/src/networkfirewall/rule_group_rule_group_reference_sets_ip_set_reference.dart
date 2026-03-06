// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_reference_sets_ip_set_reference_ip_set_reference.dart';

class RuleGroupRuleGroupReferenceSetsIpSetReference {
  /// Set of configuration blocks that define the IP Reference information. See IP Set Reference below for details.
  final pulumi.Input<List<RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference>> ipSetReferences;
  final pulumi.Input<String> key;

  /// Creates a new [RuleGroupRuleGroupReferenceSetsIpSetReference].
  /// [ipSetReferences] Set of configuration blocks that define the IP Reference information. See IP Set Reference below for details.
  /// [key] Required.
  const RuleGroupRuleGroupReferenceSetsIpSetReference({
    required this.ipSetReferences,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': pulumi.Input.mapInputValue<List<RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference>, List<Map<String, dynamic>>>(ipSetReferences, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': key,
    };
  }

  factory RuleGroupRuleGroupReferenceSetsIpSetReference.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSetsIpSetReference(
      ipSetReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference>(map['ipSetReferences']!, (value) => RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference.fromMap((value as Map).cast<String, dynamic>()))),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

