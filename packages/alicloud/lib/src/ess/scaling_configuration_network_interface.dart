// ignore_for_file: unused_element, unnecessary_cast


class ScalingConfigurationNetworkInterface {
  /// The ENI type. If you specify NetworkInterfaces.N, specify at least one primary ENI. You cannot specify SecurityGroupId or SecurityGroupIds.N. Valid values: Primary, Secondary.
  final String? instanceType;
  /// The number of randomly generated IPv6 addresses that you want to assign to primary ENI N.
  final int? ipv6AddressCount;
  /// The communication mode of the ENI. Valid values: Standard, HighPerformance.
  final String? networkInterfaceTrafficMode;
  /// The ID of security group N to which ENI N belongs.
  final List<String>? securityGroupIds;

  /// Creates a new [ScalingConfigurationNetworkInterface].
  /// [instanceType] The ENI type. If you specify NetworkInterfaces.N, specify at least one primary ENI. You cannot specify SecurityGroupId or SecurityGroupIds.N. Valid values: Primary, Secondary.
  /// [ipv6AddressCount] The number of randomly generated IPv6 addresses that you want to assign to primary ENI N.
  /// [networkInterfaceTrafficMode] The communication mode of the ENI. Valid values: Standard, HighPerformance.
  /// [securityGroupIds] The ID of security group N to which ENI N belongs.
  ScalingConfigurationNetworkInterface({
    this.instanceType,
    this.ipv6AddressCount,
    this.networkInterfaceTrafficMode,
    this.securityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'ipv6AddressCount': ?ipv6AddressCount,
      'networkInterfaceTrafficMode': ?networkInterfaceTrafficMode,
      'securityGroupIds': ?securityGroupIds,
    };
  }

  factory ScalingConfigurationNetworkInterface.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationNetworkInterface(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : map['ipv6AddressCount'] as int,
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] == null ? null : map['networkInterfaceTrafficMode'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
    );
  }
}

