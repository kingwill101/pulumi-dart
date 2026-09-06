// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_shared_public_ip_address_configuration_response.dart';

/// Property overrides on a subnet of a virtual network.
class SubnetOverrideResponse {
  /// The name given to the subnet within the lab.
  final pulumi.Input<String?>? labSubnetName;
  /// The resource ID of the subnet.
  final pulumi.Input<String?>? resourceId;
  /// Properties that virtual machines on this subnet will share.
  final pulumi.Input<SubnetSharedPublicIpAddressConfigurationResponse?>? sharedPublicIpAddressConfiguration;
  /// Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  final pulumi.Input<String?>? useInVmCreationPermission;
  /// Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  final pulumi.Input<String?>? usePublicIpAddressPermission;
  /// The virtual network pool associated with this subnet.
  final pulumi.Input<String?>? virtualNetworkPoolName;

  /// Creates a new [SubnetOverrideResponse].
  /// [labSubnetName] The name given to the subnet within the lab.
  /// [resourceId] The resource ID of the subnet.
  /// [sharedPublicIpAddressConfiguration] Properties that virtual machines on this subnet will share.
  /// [useInVmCreationPermission] Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  /// [usePublicIpAddressPermission] Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  /// [virtualNetworkPoolName] The virtual network pool associated with this subnet.
  const SubnetOverrideResponse({
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
      'sharedPublicIpAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<SubnetSharedPublicIpAddressConfigurationResponse, Map<String, dynamic>>(sharedPublicIpAddressConfiguration, (value) => value.toMap()),
      'useInVmCreationPermission': ?useInVmCreationPermission,
      'usePublicIpAddressPermission': ?usePublicIpAddressPermission,
      'virtualNetworkPoolName': ?virtualNetworkPoolName,
    };
  }

  factory SubnetOverrideResponse.fromMap(Map<String, dynamic> map) {
    return SubnetOverrideResponse(
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedPublicIpAddressConfiguration: (() { final guardedValue = map['sharedPublicIpAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetSharedPublicIpAddressConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useInVmCreationPermission: (() { final guardedValue = map['useInVmCreationPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePublicIpAddressPermission: (() { final guardedValue = map['usePublicIpAddressPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkPoolName: (() { final guardedValue = map['virtualNetworkPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
