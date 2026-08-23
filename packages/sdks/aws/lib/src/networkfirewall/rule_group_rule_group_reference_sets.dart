// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_reference_sets_ip_set_reference.dart';

class RuleGroupRuleGroupReferenceSets {
  final pulumi.Input<List<RuleGroupRuleGroupReferenceSetsIpSetReference>>? ipSetReferences;

  /// Creates a new [RuleGroupRuleGroupReferenceSets].
  /// [ipSetReferences] Optional.
  const RuleGroupRuleGroupReferenceSets({
    this.ipSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleGroupReferenceSetsIpSetReference>, List<Map<String, dynamic>>>(ipSetReferences, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupReferenceSetsIpSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleGroupReferenceSets.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSets(
      ipSetReferences: (() { final guardedValue = map['ipSetReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupReferenceSetsIpSetReference>(guardedValue, (value) => RuleGroupRuleGroupReferenceSetsIpSetReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
