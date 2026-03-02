// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResiliencyPolicyPolicySoftware {
  /// Recovery Point Objective (RPO) as a Go duration.
  final pulumi.Input<String> rpo;
  /// Recovery Time Objective (RTO) as a Go duration.
  final pulumi.Input<String> rto;

  /// Creates a new [ResiliencyPolicyPolicySoftware].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  ResiliencyPolicyPolicySoftware({
    required this.rpo,
    required this.rto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rpo': rpo,
      'rto': rto,
    };
  }

  factory ResiliencyPolicyPolicySoftware.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicySoftware(
      rpo: (map['rpo'] as String).input(),
      rto: (map['rto'] as String).input(),
    );
  }
}

