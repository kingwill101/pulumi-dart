// ignore_for_file: unused_element, unnecessary_cast


class ClusterClientAuthenticationSasl {
  final bool? iam;
  final bool? scram;

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
      iam: map['iam'] == null ? null : map['iam'] as bool,
      scram: map['scram'] == null ? null : map['scram'] as bool,
    );
  }
}

