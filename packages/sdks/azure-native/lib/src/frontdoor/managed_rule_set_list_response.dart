// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set_exception_list_response.dart';
import 'managed_rule_set_response.dart';

/// Defines the list of managed rule sets for the policy.
class ManagedRuleSetListResponse {
  /// List of exceptions applied on the managed rule sets.
  final pulumi.Input<ManagedRuleSetExceptionListResponse?>? exceptionsList;
  /// List of rule sets.
  final pulumi.Input<List<ManagedRuleSetResponse>?>? managedRuleSets;

  /// Creates a new [ManagedRuleSetListResponse].
  /// [exceptionsList] List of exceptions applied on the managed rule sets.
  /// [managedRuleSets] List of rule sets.
  const ManagedRuleSetListResponse({
    this.exceptionsList,
    this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionsList': ?pulumi.Input.mapOptionalInputValue<ManagedRuleSetExceptionListResponse, Map<String, dynamic>>(exceptionsList, (value) => value.toMap()),
      'managedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSetResponse>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetListResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetListResponse(
      exceptionsList: (() { final guardedValue = map['exceptionsList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedRuleSetExceptionListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedRuleSets: (() { final guardedValue = map['managedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetResponse>(guardedValue, (value) => ManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
