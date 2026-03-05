// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResiliencyPolicyPolicyRegion {
  /// Recovery Point Objective (RPO) as a Go duration.
  final pulumi.Input<String>? rpo;
  /// Recovery Time Objective (RTO) as a Go duration.
  final pulumi.Input<String>? rto;

  /// Creates a new [ResiliencyPolicyPolicyRegion].
  /// [rpo] Recovery Point Objective (RPO) as a Go duration.
  /// [rto] Recovery Time Objective (RTO) as a Go duration.
  ResiliencyPolicyPolicyRegion({
    this.rpo,
    this.rto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rpo': ?rpo,
      'rto': ?rto,
    };
  }

  factory ResiliencyPolicyPolicyRegion.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicyRegion(
      rpo: (() { final guardedValue = map['rpo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rto: (() { final guardedValue = map['rto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

