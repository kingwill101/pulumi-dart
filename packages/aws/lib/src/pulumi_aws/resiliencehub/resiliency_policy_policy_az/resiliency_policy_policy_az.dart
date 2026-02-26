// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicyAz {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String rto;

  ResiliencyPolicyPolicyAz({
    required this.rpo,
    required this.rto,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rpo'] = rpo;
    map['rto'] = rto;
    return map;
  }

  factory ResiliencyPolicyPolicyAz.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyAz(
      rpo: map['rpo'] as String,
      rto: map['rto'] as String,
    );
  }
}
