// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_shared_public_ip_address_configuration.dart';

/// Property overrides on a subnet of a virtual network.
class SubnetOverride {
  /// The name given to the subnet within the lab.
  final pulumi.Input<String?>? labSubnetName;
  /// The resource ID of the subnet.
  final pulumi.Input<String?>? resourceId;
  /// Properties that virtual machines on this subnet will share.
  final pulumi.Input<SubnetSharedPublicIpAddressConfiguration?>? sharedPublicIpAddressConfiguration;
  /// Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  final pulumi.Input<dynamic>? useInVmCreationPermission;
  /// Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  final pulumi.Input<dynamic>? usePublicIpAddressPermission;
  /// The virtual network pool associated with this subnet.
  final pulumi.Input<String?>? virtualNetworkPoolName;

  /// Creates a new [SubnetOverride].
  /// [labSubnetName] The name given to the subnet within the lab.
  /// [resourceId] The resource ID of the subnet.
  /// [sharedPublicIpAddressConfiguration] Properties that virtual machines on this subnet will share.
  /// [useInVmCreationPermission] Indicates whether this subnet can be used during virtual machine creation (i.e. Allow, Deny).
  /// [usePublicIpAddressPermission] Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
  /// [virtualNetworkPoolName] The virtual network pool associated with this subnet.
  const SubnetOverride({
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
      'sharedPublicIpAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<SubnetSharedPublicIpAddressConfiguration, Map<String, dynamic>>(sharedPublicIpAddressConfiguration, (value) => value.toMap()),
      'useInVmCreationPermission': ?useInVmCreationPermission,
      'usePublicIpAddressPermission': ?usePublicIpAddressPermission,
      'virtualNetworkPoolName': ?virtualNetworkPoolName,
    };
  }

  factory SubnetOverride.fromMap(Map<String, dynamic> map) {
    return SubnetOverride(
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedPublicIpAddressConfiguration: (() { final guardedValue = map['sharedPublicIpAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetSharedPublicIpAddressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useInVmCreationPermission: (() { final guardedValue = map['useInVmCreationPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePublicIpAddressPermission: (() { final guardedValue = map['usePublicIpAddressPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      virtualNetworkPoolName: (() { final guardedValue = map['virtualNetworkPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
