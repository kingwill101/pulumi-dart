// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClientAuthenticationSasl {
  /// Whether to enable IAM client authentication. Defaults to `false`.
  final pulumi.Input<bool?>? iam;
  /// Whether to enable SCRAM client authentication via AWS Secrets Manager. Defaults to `false`.
  final pulumi.Input<bool?>? scram;

  /// Creates a new [ClusterClientAuthenticationSasl].
  /// [iam] Whether to enable IAM client authentication. Defaults to `false`.
  /// [scram] Whether to enable SCRAM client authentication via AWS Secrets Manager. Defaults to `false`.
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
