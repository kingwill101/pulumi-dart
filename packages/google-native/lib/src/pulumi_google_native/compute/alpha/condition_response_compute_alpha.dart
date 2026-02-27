// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class ConditionResponseComputeAlpha {
  /// This is deprecated and has no effect. Do not use.
  final String iam;

  /// This is deprecated and has no effect. Do not use.
  final String op;

  /// This is deprecated and has no effect. Do not use.
  final String svc;

  /// This is deprecated and has no effect. Do not use.
  final String sys;

  /// This is deprecated and has no effect. Do not use.
  final List<String> values;

  ConditionResponseComputeAlpha({
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

  factory ConditionResponseComputeAlpha.fromMap(Map<String, dynamic> map) {
    return ConditionResponseComputeAlpha(
      iam: map['iam'] as String,
      op: map['op'] as String,
      svc: map['svc'] as String,
      sys: map['sys'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
