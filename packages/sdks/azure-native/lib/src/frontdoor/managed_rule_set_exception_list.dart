// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_set_exception.dart';

/// Defines the list of exceptions for the managed rule sets.
class ManagedRuleSetExceptionList {
  /// List of exceptions.
  final pulumi.Input<List<ManagedRuleSetException>?>? exceptions;

  /// Creates a new [ManagedRuleSetExceptionList].
  /// [exceptions] List of exceptions.
  const ManagedRuleSetExceptionList({
    this.exceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleSetException>, List<Map<String, dynamic>>>(exceptions, (value) => pulumi.Input.encodeList<ManagedRuleSetException, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleSetExceptionList.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetExceptionList(
      exceptions: (() { final guardedValue = map['exceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetException>(guardedValue, (value) => ManagedRuleSetException.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
