// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set_scope_response.dart';

/// Excludes whole requests from managed rule evaluation according to match conditions.
class ManagedRuleSetExceptionResponse {
  /// List of values to be matched with.
  final pulumi.Input<List<String>> matchValues;
  /// The variable to be evaluated for excluding the request.
  final pulumi.Input<String> matchVariable;
  /// Scope(s) of the exception.
  final pulumi.Input<List<ManagedRuleSetScopeResponse>> scopes;
  /// When matchVariable is a collection, operator used to specify which elements
  /// in the collection this exception applies to.
  /// Currently supported only for RequestHeaderNames.
  final pulumi.Input<String>? selector;
  /// Comparison operator to apply to the selector when specifying which elements
  /// in the collection this exception applies to.
  final pulumi.Input<String>? selectorMatchOperator;
  /// Comparison operator to apply to the value to be matched.
  final pulumi.Input<String> valueMatchOperator;

  /// Creates a new [ManagedRuleSetExceptionResponse].
  /// [matchValues] List of values to be matched with.
  /// [matchVariable] The variable to be evaluated for excluding the request.
  /// [scopes] Scope(s) of the exception.
  /// [selector] When matchVariable is a collection, operator used to specify which elements
  /// [selectorMatchOperator] Comparison operator to apply to the selector when specifying which elements
  /// [valueMatchOperator] Comparison operator to apply to the value to be matched.
  const ManagedRuleSetExceptionResponse({
    required this.matchValues,
    required this.matchVariable,
    required this.scopes,
    this.selector,
    this.selectorMatchOperator,
    required this.valueMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'matchVariable': matchVariable,
      'scopes': pulumi.Input.mapInputValue<List<ManagedRuleSetScopeResponse>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<ManagedRuleSetScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': ?selector,
      'selectorMatchOperator': ?selectorMatchOperator,
      'valueMatchOperator': valueMatchOperator,
    };
  }

  factory ManagedRuleSetExceptionResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetExceptionResponse(
      matchValues: pulumi.Input.fromValue((map['matchValues'] as List).cast<String>()),
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetScopeResponse>(map['scopes']!, (value) => ManagedRuleSetScopeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectorMatchOperator: (() { final guardedValue = map['selectorMatchOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueMatchOperator: pulumi.Input.fromValue(map['valueMatchOperator'] as String),
    );
  }
}
