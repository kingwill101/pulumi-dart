// ignore_for_file: unused_element, unnecessary_cast

/// A condition to be met.
class ConditionResponse6 {
  /// Trusted attributes supplied by the IAM system.
  final String iam;

  /// An operator to apply the subject with.
  final String op;

  /// Trusted attributes discharged by the service.
  final String svc;

  /// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  final String sys;

  /// The objects of the condition.
  final List<String> values;

  ConditionResponse6({
    required this.iam,
    required this.op,
    required this.svc,
    required this.sys,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iam'] = iam;
    map['op'] = op;
    map['svc'] = svc;
    map['sys'] = sys;
    map['values'] = values;
    return map;
  }

  factory ConditionResponse6.fromMap(Map<String, dynamic> map) {
    return ConditionResponse6(
      iam: map['iam'] as String,
      op: map['op'] as String,
      svc: map['svc'] as String,
      sys: map['sys'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
