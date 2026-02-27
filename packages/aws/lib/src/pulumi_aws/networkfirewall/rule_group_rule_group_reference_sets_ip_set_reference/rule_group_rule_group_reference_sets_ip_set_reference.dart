// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_group_reference_sets_ip_set_reference_ip_set_reference/rule_group_rule_group_reference_sets_ip_set_reference_ip_set_reference.dart';

class RuleGroupRuleGroupReferenceSetsIpSetReference {
  /// Set of configuration blocks that define the IP Reference information. See IP Set Reference below for details.
  final List<RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference>
      ipSetReferences;
  final String key;

  RuleGroupRuleGroupReferenceSetsIpSetReference({
    required this.ipSetReferences,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipSetReferences'] = pulumi.Input.encodeList<
        RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference,
        Map<String, dynamic>>(ipSetReferences, (value) => value.toMap());
    map['key'] = key;
    return map;
  }

  factory RuleGroupRuleGroupReferenceSetsIpSetReference.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSetsIpSetReference(
      ipSetReferences: pulumi.Input.decodeList<
              RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference>(
          map['ipSetReferences'],
          (value) => RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReference
              .fromMap((value as Map).cast<String, dynamic>())),
      key: map['key'] as String,
    );
  }
}
