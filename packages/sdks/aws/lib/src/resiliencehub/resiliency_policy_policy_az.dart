// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResiliencyPolicyPolicyAz {
  /// Recovery Point Objective (RPO) as a Go duration.
  final pulumi.Input<String> rpo;
  /// Recovery Time Objective (RTO) as a Go duration.
  final pulumi.Input<String> rto;

  /// Creates a new [ResiliencyPolicyPolicyAz].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  const ResiliencyPolicyPolicyAz({
    required this.rpo,
    required this.rto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rpo': rpo,
      'rto': rto,
    };
  }

  factory ResiliencyPolicyPolicyAz.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyAz(
      rpo: pulumi.Input.fromValue(map['rpo'] as String),
      rto: pulumi.Input.fromValue(map['rto'] as String),
    );
  }
}
