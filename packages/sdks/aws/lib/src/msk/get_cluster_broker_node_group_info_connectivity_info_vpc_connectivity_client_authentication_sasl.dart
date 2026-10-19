// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl {
  /// Whether SASL IAM authentication is enabled for VPC connectivity.
  final pulumi.Input<bool> iam;
  /// Whether SASL SCRAM authentication is enabled for VPC connectivity.
  final pulumi.Input<bool> scram;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl].
  /// [iam] Whether SASL IAM authentication is enabled for VPC connectivity.
  /// [scram] Whether SASL SCRAM authentication is enabled for VPC connectivity.
  const GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl({
    required this.iam,
    required this.scram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': iam,
      'scram': scram,
    };
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl(
      iam: pulumi.Input.fromValue(map['iam'] as bool),
      scram: pulumi.Input.fromValue(map['scram'] as bool),
    );
  }
}
