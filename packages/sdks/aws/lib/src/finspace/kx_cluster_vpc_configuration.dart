// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterVpcConfiguration {
  /// IP address type for cluster network configuration parameters. The following type is available: IP_V4 - IP address version 4.
  final pulumi.Input<String> ipAddressType;

  /// Unique identifier of the VPC security group applied to the VPC endpoint ENI for the cluster.
  /// * `subnet_ids `- (Required) Identifier of the subnet that the Privatelink VPC endpoint uses to connect to the cluster.
  final pulumi.Input<List<String>> securityGroupIds;
  final pulumi.Input<List<String>> subnetIds;

  /// Identifier of the VPC endpoint
  final pulumi.Input<String> vpcId;

  /// Creates a new [KxClusterVpcConfiguration].
  /// [ipAddressType] IP address type for cluster network configuration parameters. The following type is available: IP_V4 - IP address version 4.
  /// [securityGroupIds] Unique identifier of the VPC security group applied to the VPC endpoint ENI for the cluster.
  /// [subnetIds] Required.
  /// [vpcId] Identifier of the VPC endpoint
  KxClusterVpcConfiguration({
    required this.ipAddressType,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ipAddressType,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory KxClusterVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterVpcConfiguration(
      ipAddressType: pulumi.Input.fromValue(map['ipAddressType'] as String),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
