// ignore_for_file: unused_element, unnecessary_cast

class ClusterClientAuthenticationSasl {
  final bool? iam;
  final bool? scram;

  ClusterClientAuthenticationSasl({
    this.iam,
    this.scram,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iamValue = iam;
    if (iamValue != null) {
      map['iam'] = iamValue;
    }
    final scramValue = scram;
    if (scramValue != null) {
      map['scram'] = scramValue;
    }
    return map;
  }

  factory ClusterClientAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthenticationSasl(
      iam: map['iam'] == null ? null : map['iam'] as bool,
      scram: map['scram'] == null ? null : map['scram'] as bool,
    );
  }
}
