// ignore_for_file: unused_element, unnecessary_cast

class KxClusterVpcConfiguration {
  /// IP address type for cluster network configuration parameters. The following type is available: IP_V4 - IP address version 4.
  final String ipAddressType;

  /// Unique identifier of the VPC security group applied to the VPC endpoint ENI for the cluster.
  /// * <span pulumi-lang-nodejs="`subnetIds " pulumi-lang-dotnet="`SubnetIds " pulumi-lang-go="`subnetIds " pulumi-lang-python="`subnet_ids " pulumi-lang-yaml="`subnetIds " pulumi-lang-java="`subnetIds ">`subnet_ids </span>`- (Required) Identifier of the subnet that the Privatelink VPC endpoint uses to connect to the cluster.
  final List<String> securityGroupIds;
  final List<String> subnetIds;

  /// Identifier of the VPC endpoint
  final String vpcId;

  KxClusterVpcConfiguration({
    required this.ipAddressType,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddressType'] = ipAddressType;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory KxClusterVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterVpcConfiguration(
      ipAddressType: map['ipAddressType'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
