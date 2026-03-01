// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exception_entry_response.dart';
import 'managed_rule_set_response.dart';
import 'owasp_crs_exclusion_entry_response.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class ManagedRulesDefinitionResponse {
  /// The exceptions that are applied on the policy.
  final List<ExceptionEntryResponse>? exceptions;
  /// The Exclusions that are applied on the policy.
  final List<OwaspCrsExclusionEntryResponse>? exclusions;
  /// The managed rule sets that are associated with the policy.
  final List<ManagedRuleSetResponse> managedRuleSets;

  /// Creates a new [ManagedRulesDefinitionResponse].
  /// [exceptions] The exceptions that are applied on the policy.
  /// [exclusions] The Exclusions that are applied on the policy.
  /// [managedRuleSets] The managed rule sets that are associated with the policy.
  ManagedRulesDefinitionResponse({
    this.exceptions,
    this.exclusions,
    required this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?exceptions == null ? null : pulumi.Input.encodeList<ExceptionEntryResponse, Map<String, dynamic>>(exceptions!, (value) => value.toMap()),
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<OwaspCrsExclusionEntryResponse, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'managedRuleSets': pulumi.Input.encodeList<ManagedRuleSetResponse, Map<String, dynamic>>(managedRuleSets, (value) => value.toMap()),
    };
  }

  factory ManagedRulesDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRulesDefinitionResponse(
      exceptions: map['exceptions'] == null ? null : pulumi.Input.decodeList<ExceptionEntryResponse>(map['exceptions'], (value) => ExceptionEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<OwaspCrsExclusionEntryResponse>(map['exclusions'], (value) => OwaspCrsExclusionEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      managedRuleSets: pulumi.Input.decodeList<ManagedRuleSetResponse>(map['managedRuleSets'], (value) => ManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

