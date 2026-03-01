// ignore_for_file: unused_element, unnecessary_cast


class EcsInstanceSetNetworkInterface {
  /// The description of ENI.
  final String? description;
  /// The name of ENI.
  final String? networkInterfaceName;
  /// The primary private IP address of ENI.
  final String? primaryIpAddress;
  /// The ID of the security group to which to assign secondary ENI.
  final String securityGroupId;
  /// The ID of the vSwitch to which to connect ENI.
  final String? vswitchId;

  /// Creates a new [EcsInstanceSetNetworkInterface].
  /// [description] The description of ENI.
  /// [networkInterfaceName] The name of ENI.
  /// [primaryIpAddress] The primary private IP address of ENI.
  /// [securityGroupId] The ID of the security group to which to assign secondary ENI.
  /// [vswitchId] The ID of the vSwitch to which to connect ENI.
  EcsInstanceSetNetworkInterface({
    this.description,
    this.networkInterfaceName,
    this.primaryIpAddress,
    required this.securityGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkInterfaceName': ?networkInterfaceName,
      'primaryIpAddress': ?primaryIpAddress,
      'securityGroupId': securityGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory EcsInstanceSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetNetworkInterface(
      description: map['description'] == null ? null : map['description'] as String,
      networkInterfaceName: map['networkInterfaceName'] == null ? null : map['networkInterfaceName'] as String,
      primaryIpAddress: map['primaryIpAddress'] == null ? null : map['primaryIpAddress'] as String,
      securityGroupId: map['securityGroupId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

