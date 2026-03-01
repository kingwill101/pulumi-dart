// ignore_for_file: unused_element, unnecessary_cast

import 'condition_iam.dart';
import 'condition_op.dart';
import 'condition_sys.dart';

/// This is deprecated and has no effect. Do not use.
class Condition {
  /// This is deprecated and has no effect. Do not use.
  final ConditionIam? iam;

  /// This is deprecated and has no effect. Do not use.
  final ConditionOp? op;

  /// This is deprecated and has no effect. Do not use.
  final String? svc;

  /// This is deprecated and has no effect. Do not use.
  final ConditionSys? sys;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? values;

  /// Creates a new [Condition].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  Condition({this.iam, this.op, this.svc, this.sys, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?iam == null ? null : iam!.value,
      'op': ?op == null ? null : op!.value,
      'svc': ?svc,
      'sys': ?sys == null ? null : sys!.value,
      'values': ?values,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      iam: map['iam'] == null
          ? null
          : ConditionIam.fromValue(map['iam'] as String),
      op: map['op'] == null ? null : ConditionOp.fromValue(map['op'] as String),
      svc: map['svc'] == null ? null : map['svc'] as String,
      sys: map['sys'] == null
          ? null
          : ConditionSys.fromValue(map['sys'] as String),
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
