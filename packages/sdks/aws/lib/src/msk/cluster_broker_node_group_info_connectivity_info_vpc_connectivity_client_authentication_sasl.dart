// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl {
  final pulumi.Input<bool>? iam;
  final pulumi.Input<bool>? scram;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl].
  /// [iam] Optional.
  /// [scram] Optional.
  ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl({
    this.iam,
    this.scram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?iam,
      'scram': ?scram,
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl(
      iam: map['iam'] == null ? null : ((map['iam'] as bool).input()).input(),
      scram: map['scram'] == null ? null : ((map['scram'] as bool).input()).input(),
    );
  }
}

