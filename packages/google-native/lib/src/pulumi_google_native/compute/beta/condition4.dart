// ignore_for_file: unused_element, unnecessary_cast

import 'condition_iam2.dart';
import 'condition_op2.dart';
import 'condition_sys2.dart';

/// This is deprecated and has no effect. Do not use.
class Condition4 {
  /// This is deprecated and has no effect. Do not use.
  final ConditionIam2? iam;

  /// This is deprecated and has no effect. Do not use.
  final ConditionOp2? op;

  /// This is deprecated and has no effect. Do not use.
  final String? svc;

  /// This is deprecated and has no effect. Do not use.
  final ConditionSys2? sys;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? values;

  Condition4({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iamValue = iam;
    if (iamValue != null) {
      map['iam'] = iamValue.value;
    }
    final opValue = op;
    if (opValue != null) {
      map['op'] = opValue.value;
    }
    final svcValue = svc;
    if (svcValue != null) {
      map['svc'] = svcValue;
    }
    final sysValue = sys;
    if (sysValue != null) {
      map['sys'] = sysValue.value;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory Condition4.fromMap(Map<String, dynamic> map) {
    return Condition4(
      iam: map['iam'] == null
          ? null
          : ConditionIam2.fromValue(map['iam'] as String),
      op: map['op'] == null
          ? null
          : ConditionOp2.fromValue(map['op'] as String),
      svc: map['svc'] == null ? null : map['svc'] as String,
      sys: map['sys'] == null
          ? null
          : ConditionSys2.fromValue(map['sys'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
