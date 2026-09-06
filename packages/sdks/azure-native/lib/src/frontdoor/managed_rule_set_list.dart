// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set.dart';
import 'managed_rule_set_exception_list.dart';

/// Defines the list of managed rule sets for the policy.
class ManagedRuleSetList {
  /// List of exceptions applied on the managed rule sets.
  final pulumi.Input<ManagedRuleSetExceptionList?>? exceptionsList;
  /// List of rule sets.
  final pulumi.Input<List<ManagedRuleSet>?>? managedRuleSets;

  /// Creates a new [ManagedRuleSetList].
  /// [exceptionsList] List of exceptions applied on the managed rule sets.
  /// [managedRuleSets] List of rule sets.
  const ManagedRuleSetList({
    this.exceptionsList,
    this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionsList': ?pulumi.Input.mapOptionalInputValue<ManagedRuleSetExceptionList, Map<String, dynamic>>(exceptionsList, (value) => value.toMap()),
      'managedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSet>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetList.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetList(
      exceptionsList: (() { final guardedValue = map['exceptionsList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedRuleSetExceptionList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedRuleSets: (() { final guardedValue = map['managedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSet>(guardedValue, (value) => ManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
