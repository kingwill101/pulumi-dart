// ignore_for_file: unused_element, unnecessary_cast

/// A condition to be met.
class ConditionResponse {
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

  /// Creates a new [ConditionResponse].
  /// [iam] Trusted attributes supplied by the IAM system.
  /// [op] An operator to apply the subject with.
  /// [svc] Trusted attributes discharged by the service.
  /// [sys] Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  /// [values] The objects of the condition.
  ConditionResponse({
    required this.iam,
    required this.op,
    required this.svc,
    required this.sys,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': iam,
      'op': op,
      'svc': svc,
      'sys': sys,
      'values': values,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      iam: map['iam'] as String,
      op: map['op'] as String,
      svc: map['svc'] as String,
      sys: map['sys'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
