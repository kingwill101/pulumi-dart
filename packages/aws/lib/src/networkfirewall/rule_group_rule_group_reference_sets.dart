// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_reference_sets_ip_set_reference.dart';

class RuleGroupRuleGroupReferenceSets {
  final List<RuleGroupRuleGroupReferenceSetsIpSetReference>? ipSetReferences;

  /// Creates a new [RuleGroupRuleGroupReferenceSets].
  /// [ipSetReferences] Optional.
  RuleGroupRuleGroupReferenceSets({this.ipSetReferences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': ?ipSetReferences == null
          ? null
          : pulumi.Input.encodeList<
              RuleGroupRuleGroupReferenceSetsIpSetReference,
              Map<String, dynamic>
            >(ipSetReferences!, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupReferenceSets.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupReferenceSets(
      ipSetReferences: map['ipSetReferences'] == null
          ? null
          : pulumi.Input.decodeList<
              RuleGroupRuleGroupReferenceSetsIpSetReference
            >(
              map['ipSetReferences'],
              (value) => RuleGroupRuleGroupReferenceSetsIpSetReference.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
