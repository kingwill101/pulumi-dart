// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessClusterVpcConfig {
  /// Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of subnets in at least two different Availability Zones that host your client applications.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ServerlessClusterVpcConfig].
  /// [securityGroupIds] Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster.
  /// [subnetIds] A list of subnets in at least two different Availability Zones that host your client applications.
  ServerlessClusterVpcConfig({
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory ServerlessClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterVpcConfig(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}

