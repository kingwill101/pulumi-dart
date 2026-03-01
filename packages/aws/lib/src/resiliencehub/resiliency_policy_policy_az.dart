// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicyAz {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String rto;

  /// Creates a new [ResiliencyPolicyPolicyAz].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  ResiliencyPolicyPolicyAz({required this.rpo, required this.rto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rpo': rpo, 'rto': rto};
  }

  factory ResiliencyPolicyPolicyAz.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyAz(
      rpo: map['rpo'] as String,
      rto: map['rto'] as String,
    );
  }
}
