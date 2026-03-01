// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicyRegion {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String? rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String? rto;

  /// Creates a new [ResiliencyPolicyPolicyRegion].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  ResiliencyPolicyPolicyRegion({this.rpo, this.rto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rpo': ?rpo, 'rto': ?rto};
  }

  factory ResiliencyPolicyPolicyRegion.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyRegion(
      rpo: map['rpo'] == null ? null : map['rpo'] as String,
      rto: map['rto'] == null ? null : map['rto'] as String,
    );
  }
}
