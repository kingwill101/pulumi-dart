// ignore_for_file: unused_element, unnecessary_cast

import 'condition_iam_gameservices_v1.dart';
import 'condition_op_gameservices_v1.dart';
import 'condition_sys_gameservices_v1.dart';

/// A condition to be met.
class ConditionGameservicesV1 {
  /// Trusted attributes supplied by the IAM system.
  final ConditionIamGameservicesV1? iam;

  /// An operator to apply the subject with.
  final ConditionOpGameservicesV1? op;

  /// Trusted attributes discharged by the service.
  final String? svc;

  /// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  final ConditionSysGameservicesV1? sys;

  /// The objects of the condition.
  final List<String>? values;

  ConditionGameservicesV1({
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

  factory ConditionGameservicesV1.fromMap(Map<String, dynamic> map) {
    return ConditionGameservicesV1(
      iam: map['iam'] == null
          ? null
          : ConditionIamGameservicesV1.fromValue(map['iam'] as String),
      op: map['op'] == null
          ? null
          : ConditionOpGameservicesV1.fromValue(map['op'] as String),
      svc: map['svc'] == null ? null : map['svc'] as String,
      sys: map['sys'] == null
          ? null
          : ConditionSysGameservicesV1.fromValue(map['sys'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
