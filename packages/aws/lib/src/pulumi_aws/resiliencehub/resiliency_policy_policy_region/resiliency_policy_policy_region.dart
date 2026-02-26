// ignore_for_file: unused_element, unnecessary_cast

class ResiliencyPolicyPolicyRegion {
  /// Recovery Point Objective (RPO) as a Go duration.
  final String? rpo;

  /// Recovery Time Objective (RTO) as a Go duration.
  final String? rto;

  ResiliencyPolicyPolicyRegion({
    this.rpo,
    this.rto,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rpoValue = rpo;
    if (rpoValue != null) {
      map['rpo'] = rpoValue;
    }
    final rtoValue = rto;
    if (rtoValue != null) {
      map['rto'] = rtoValue;
    }
    return map;
  }

  factory ResiliencyPolicyPolicyRegion.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyRegion(
      rpo: map['rpo'] == null ? null : map['rpo'] as String,
      rto: map['rto'] == null ? null : map['rto'] as String,
    );
  }
}
