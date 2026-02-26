// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_group_reference_sets_ip_set_reference/rule_group_rule_group_reference_sets_ip_set_reference.dart';

class RuleGroupRuleGroupReferenceSets {
  final List<RuleGroupRuleGroupReferenceSetsIpSetReference>? ipSetReferences;

  RuleGroupRuleGroupReferenceSets({
    this.ipSetReferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipSetReferencesValue = ipSetReferences;
    if (ipSetReferencesValue != null) {
      map['ipSetReferences'] = Input.encodeList<
          RuleGroupRuleGroupReferenceSetsIpSetReference,
          Map<String, dynamic>>(ipSetReferencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuleGroupRuleGroupReferenceSets.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSets(
      ipSetReferences: map['ipSetReferences'] == null
          ? null
          : Input.decodeList<RuleGroupRuleGroupReferenceSetsIpSetReference>(
              map['ipSetReferences'],
              (value) => RuleGroupRuleGroupReferenceSetsIpSetReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
