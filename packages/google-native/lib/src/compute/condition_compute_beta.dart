// ignore_for_file: unused_element, unnecessary_cast

import 'condition_iam_compute_beta.dart';
import 'condition_op_compute_beta.dart';
import 'condition_sys_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class ConditionComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final ConditionIamComputeBeta? iam;

  /// This is deprecated and has no effect. Do not use.
  final ConditionOpComputeBeta? op;

  /// This is deprecated and has no effect. Do not use.
  final String? svc;

  /// This is deprecated and has no effect. Do not use.
  final ConditionSysComputeBeta? sys;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? values;

  /// Creates a new [ConditionComputeBeta].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  ConditionComputeBeta({this.iam, this.op, this.svc, this.sys, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?iam == null ? null : iam!.value,
      'op': ?op == null ? null : op!.value,
      'svc': ?svc,
      'sys': ?sys == null ? null : sys!.value,
      'values': ?values,
    };
  }

  factory ConditionComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConditionComputeBeta(
      iam: map['iam'] == null
          ? null
          : ConditionIamComputeBeta.fromValue(map['iam'] as String),
      op: map['op'] == null
          ? null
          : ConditionOpComputeBeta.fromValue(map['op'] as String),
      svc: map['svc'] == null ? null : map['svc'] as String,
      sys: map['sys'] == null
          ? null
          : ConditionSysComputeBeta.fromValue(map['sys'] as String),
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
