// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl {
  final bool iam;
  final bool scram;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl].
  /// [iam] Required.
  /// [scram] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl({
    required this.iam,
    required this.scram,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iam'] = iam;
    map['scram'] = scram;
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl(
      iam: map['iam'] as bool,
      scram: map['scram'] as bool,
    );
  }
}
