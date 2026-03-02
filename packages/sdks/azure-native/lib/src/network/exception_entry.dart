// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_set.dart';

/// Adds exception to allow a request when the condition is satisfied.
class ExceptionEntry {
  /// The managed rule sets that are associated with the exception.
  final pulumi.Input<List<ExclusionManagedRuleSet>>? exceptionManagedRuleSets;
  /// The variable on which we evaluate the exception condition
  final pulumi.Input<String> matchVariable;
  /// When the matchVariable points to a key-value pair (e.g, RequestHeader), this identifies the key.
  final pulumi.Input<String>? selector;
  /// When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
  final pulumi.Input<String>? selectorMatchOperator;
  /// Operates on the allowed values for the matchVariable
  final pulumi.Input<String> valueMatchOperator;
  /// Allowed values for the matchVariable
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ExceptionEntry].
  /// [exceptionManagedRuleSets] The managed rule sets that are associated with the exception.
  /// [matchVariable] The variable on which we evaluate the exception condition
  /// [selector] When the matchVariable points to a key-value pair (e.g, RequestHeader), this identifies the key.
  /// [selectorMatchOperator] When the matchVariable points to a key-value pair (e.g, RequestHeader), this operates on the selector
  /// [valueMatchOperator] Operates on the allowed values for the matchVariable
  /// [values] Allowed values for the matchVariable
  ExceptionEntry({
    this.exceptionManagedRuleSets,
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
    required this.valueMatchOperator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionManagedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRuleSet>, List<Map<String, dynamic>>>(exceptionManagedRuleSets, (value) => pulumi.Input.encodeList<ExclusionManagedRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': ?selectorMatchOperator,
      'valueMatchOperator': valueMatchOperator,
      'values': ?values,
    };
  }

  factory ExceptionEntry.fromMap(Map<String, dynamic> map) {
    return ExceptionEntry(
      exceptionManagedRuleSets: map['exceptionManagedRuleSets'] == null ? null : (pulumi.Input.decodeList<ExclusionManagedRuleSet>(map['exceptionManagedRuleSets'], (value) => ExclusionManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchVariable: (map['matchVariable'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      selectorMatchOperator: map['selectorMatchOperator'] == null ? null : (map['selectorMatchOperator'] as String).input(),
      valueMatchOperator: (map['valueMatchOperator'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

