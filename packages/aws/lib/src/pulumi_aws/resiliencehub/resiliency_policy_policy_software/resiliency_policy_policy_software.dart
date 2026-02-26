// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicySoftware {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String rto;

  ResiliencyPolicyPolicySoftware({
    required this.rpo,
    required this.rto,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rpo'] = rpo;
    map['rto'] = rto;
    return map;
  }

  factory ResiliencyPolicyPolicySoftware.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicySoftware(
      rpo: map['rpo'] as String,
      rto: map['rto'] as String,
    );
  }
}
