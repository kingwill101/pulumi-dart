// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClientAuthenticationSasl {
  final pulumi.Input<bool?>? iam;
  final pulumi.Input<bool?>? scram;

  /// Creates a new [ClusterClientAuthenticationSasl].
  /// [iam] Optional.
  /// [scram] Optional.
  const ClusterClientAuthenticationSasl({
    this.iam,
    this.scram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?iam,
      'scram': ?scram,
    };
  }

  factory ClusterClientAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthenticationSasl(
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scram: (() { final guardedValue = map['scram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
