// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set_exception_response.dart';

/// Defines the list of exceptions for the managed rule sets.
class ManagedRuleSetExceptionListResponse {
  /// List of exceptions.
  final pulumi.Input<List<ManagedRuleSetExceptionResponse>>? exceptions;

  /// Creates a new [ManagedRuleSetExceptionListResponse].
  /// [exceptions] List of exceptions.
  const ManagedRuleSetExceptionListResponse({
    this.exceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSetExceptionResponse>, List<Map<String, dynamic>>>(exceptions, (value) => pulumi.Input.encodeList<ManagedRuleSetExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetExceptionListResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetExceptionListResponse(
      exceptions: (() { final guardedValue = map['exceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetExceptionResponse>(guardedValue, (value) => ManagedRuleSetExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
