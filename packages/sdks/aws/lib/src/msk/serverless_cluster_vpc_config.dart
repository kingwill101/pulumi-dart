// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessClusterVpcConfig {
  /// Up to five security groups that control inbound and outbound traffic for the serverless cluster.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// List of subnets in at least two different Availability Zones that host your client applications.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ServerlessClusterVpcConfig].
  /// [securityGroupIds] Up to five security groups that control inbound and outbound traffic for the serverless cluster.
  /// [subnetIds] List of subnets in at least two different Availability Zones that host your client applications.
  const ServerlessClusterVpcConfig({
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
