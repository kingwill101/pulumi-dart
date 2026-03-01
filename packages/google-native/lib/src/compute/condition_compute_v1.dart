// ignore_for_file: unused_element, unnecessary_cast

import 'condition_iam_compute_v1.dart';
import 'condition_op_compute_v1.dart';
import 'condition_sys_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class ConditionComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final ConditionIamComputeV1? iam;

  /// This is deprecated and has no effect. Do not use.
  final ConditionOpComputeV1? op;

  /// This is deprecated and has no effect. Do not use.
  final String? svc;

  /// This is deprecated and has no effect. Do not use.
  final ConditionSysComputeV1? sys;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? values;

  /// Creates a new [ConditionComputeV1].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  ConditionComputeV1({this.iam, this.op, this.svc, this.sys, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?iam == null ? null : iam!.value,
      'op': ?op == null ? null : op!.value,
      'svc': ?svc,
      'sys': ?sys == null ? null : sys!.value,
      'values': ?values,
    };
  }

  factory ConditionComputeV1.fromMap(Map<String, dynamic> map) {
    return ConditionComputeV1(
      iam: map['iam'] == null
          ? null
          : ConditionIamComputeV1.fromValue(map['iam'] as String),
      op: map['op'] == null
          ? null
          : ConditionOpComputeV1.fromValue(map['op'] as String),
      svc: map['svc'] == null ? null : map['svc'] as String,
      sys: map['sys'] == null
          ? null
          : ConditionSysComputeV1.fromValue(map['sys'] as String),
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
