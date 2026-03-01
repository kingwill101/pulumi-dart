// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_shared_public_ip_address_configuration_response.dart';

/// Property overrides on a subnet of a virtual network.
class SubnetOverrideResponse {
  /// The name given to the subnet within the lab.
  final String? labSubnetName;
  /// The resource ID of the subnet.
  final String? resourceId;
  /// Properties that virtual machines on this subnet will share.
  final SubnetSharedPublicIpAddressConfigurationResponse? sharedPublicIpAddressConfiguration;
  /// Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  final String? useInVmCreationPermission;
  /// Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  final String? usePublicIpAddressPermission;
  /// The virtual network pool associated with this subnet.
  final String? virtualNetworkPoolName;

  /// Creates a new [SubnetOverrideResponse].
  /// [labSubnetName] The name given to the subnet within the lab.
  /// [resourceId] The resource ID of the subnet.
  /// [sharedPublicIpAddressConfiguration] Properties that virtual machines on this subnet will share.
  /// [useInVmCreationPermission] Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  /// [usePublicIpAddressPermission] Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  /// [virtualNetworkPoolName] The virtual network pool associated with this subnet.
  SubnetOverrideResponse({
    this.labSubnetName,
    this.resourceId,
    this.sharedPublicIpAddressConfiguration,
    this.useInVmCreationPermission,
    this.usePublicIpAddressPermission,
    this.virtualNetworkPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labSubnetName': ?labSubnetName,
      'resourceId': ?resourceId,
      'sharedPublicIpAddressConfiguration': ?sharedPublicIpAddressConfiguration == null ? null : sharedPublicIpAddressConfiguration!.toMap(),
      'useInVmCreationPermission': ?useInVmCreationPermission,
      'usePublicIpAddressPermission': ?usePublicIpAddressPermission,
      'virtualNetworkPoolName': ?virtualNetworkPoolName,
    };
  }

  factory SubnetOverrideResponse.fromMap(Map<String, dynamic> map) {
    return SubnetOverrideResponse(
      labSubnetName: map['labSubnetName'] == null ? null : map['labSubnetName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      sharedPublicIpAddressConfiguration: map['sharedPublicIpAddressConfiguration'] == null ? null : SubnetSharedPublicIpAddressConfigurationResponse.fromMap((map['sharedPublicIpAddressConfiguration'] as Map).cast<String, dynamic>()),
      useInVmCreationPermission: map['useInVmCreationPermission'] == null ? null : map['useInVmCreationPermission'] as String,
      usePublicIpAddressPermission: map['usePublicIpAddressPermission'] == null ? null : map['usePublicIpAddressPermission'] as String,
      virtualNetworkPoolName: map['virtualNetworkPoolName'] == null ? null : map['virtualNetworkPoolName'] as String,
    );
  }
}

