// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_set_response.dart';

/// Adds exception to allow a request when the condition is satisfied.
class ExceptionEntryResponse {
  /// The managed rule sets that are associated with the exception.
  final List<ExclusionManagedRuleSetResponse>? exceptionManagedRuleSets;
  /// The variable on which we evaluate the exception condition
  final String matchVariable;
  /// When the matchVariable points to a key-value pair (e.g, RequestHeader), this identifies the key.
  final String? selector;
  /// When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
  final String? selectorMatchOperator;
  /// Operates on the allowed values for the matchVariable
  final String valueMatchOperator;
  /// Allowed values for the matchVariable
  final List<String>? values;

  /// Creates a new [ExceptionEntryResponse].
  /// [exceptionManagedRuleSets] The managed rule sets that are associated with the exception.
  /// [matchVariable] The variable on which we evaluate the exception condition
  /// [selector] When the matchVariable points to a key-value pair (e.g, RequestHeader), this identifies the key.
  /// [selectorMatchOperator] When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
  /// [valueMatchOperator] Operates on the allowed values for the matchVariable
  /// [values] Allowed values for the matchVariable
  ExceptionEntryResponse({
    this.exceptionManagedRuleSets,
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
    required this.valueMatchOperator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionManagedRuleSets': ?exceptionManagedRuleSets == null ? null : pulumi.Input.encodeList<ExclusionManagedRuleSetResponse, Map<String, dynamic>>(exceptionManagedRuleSets!, (value) => value.toMap()),
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': ?selectorMatchOperator,
      'valueMatchOperator': valueMatchOperator,
      'values': ?values,
    };
  }

  factory ExceptionEntryResponse.fromMap(Map<String, dynamic> map) {
    return ExceptionEntryResponse(
      exceptionManagedRuleSets: map['exceptionManagedRuleSets'] == null ? null : pulumi.Input.decodeList<ExclusionManagedRuleSetResponse>(map['exceptionManagedRuleSets'], (value) => ExclusionManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchVariable: map['matchVariable'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      selectorMatchOperator: map['selectorMatchOperator'] == null ? null : map['selectorMatchOperator'] as String,
      valueMatchOperator: map['valueMatchOperator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

