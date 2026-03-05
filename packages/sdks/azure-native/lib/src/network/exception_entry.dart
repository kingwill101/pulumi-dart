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
      exceptionManagedRuleSets: (() { final guardedValue = map['exceptionManagedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExclusionManagedRuleSet>(guardedValue, (value) => ExclusionManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectorMatchOperator: (() { final guardedValue = map['selectorMatchOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueMatchOperator: pulumi.Input.fromValue(map['valueMatchOperator'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

