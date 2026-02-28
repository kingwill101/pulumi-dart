// ignore_for_file: unused_element, unnecessary_cast

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl {
  final bool? iam;
  final bool? scram;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl].
  /// [iam] Optional.
  /// [scram] Optional.
  ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl({
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

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl(
      iam: map['iam'] == null ? null : map['iam'] as bool,
      scram: map['scram'] == null ? null : map['scram'] as bool,
    );
  }
}
