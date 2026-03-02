// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set.dart';

/// Defines the list of managed rule sets for the policy.
class ManagedRuleSetList {
  /// List of rule sets.
  final pulumi.Input<List<ManagedRuleSet>>? managedRuleSets;

  /// Creates a new [ManagedRuleSetList].
  /// [managedRuleSets] List of rule sets.
  ManagedRuleSetList({
    this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSet>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetList.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetList(
      managedRuleSets: map['managedRuleSets'] == null ? null : (pulumi.Input.decodeList<ManagedRuleSet>(map['managedRuleSets'], (value) => ManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

