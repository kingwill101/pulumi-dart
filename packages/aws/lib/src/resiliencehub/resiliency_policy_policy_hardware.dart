// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicyHardware {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String rto;

  /// Creates a new [ResiliencyPolicyPolicyHardware].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  ResiliencyPolicyPolicyHardware({required this.rpo, required this.rto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rpo': rpo, 'rto': rto};
  }

  factory ResiliencyPolicyPolicyHardware.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyHardware(
      rpo: map['rpo'] as String,
      rto: map['rto'] as String,
    );
  }
}
