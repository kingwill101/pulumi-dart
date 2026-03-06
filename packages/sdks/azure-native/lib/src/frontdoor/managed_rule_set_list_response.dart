// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set_response.dart';

/// Defines the list of managed rule sets for the policy.
class ManagedRuleSetListResponse {
  /// List of rule sets.
  final pulumi.Input<List<ManagedRuleSetResponse>>? managedRuleSets;

  /// Creates a new [ManagedRuleSetListResponse].
  /// [managedRuleSets] List of rule sets.
  const ManagedRuleSetListResponse({
    this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSetResponse>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetListResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetListResponse(
      managedRuleSets: (() { final guardedValue = map['managedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetResponse>(guardedValue, (value) => ManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

