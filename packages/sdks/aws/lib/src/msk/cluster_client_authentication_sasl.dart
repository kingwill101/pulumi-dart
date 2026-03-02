// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClientAuthenticationSasl {
  final pulumi.Input<bool>? iam;
  final pulumi.Input<bool>? scram;

  /// Creates a new [ClusterClientAuthenticationSasl].
  /// [iam] Optional.
  /// [scram] Optional.
  ClusterClientAuthenticationSasl({
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
      iam: map['iam'] == null ? null : ((map['iam'] as bool).input()).input(),
      scram: map['scram'] == null ? null : ((map['scram'] as bool).input()).input(),
    );
  }
}

