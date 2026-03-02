// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_network_interfaces_interface_associated_public_ip.dart';

class GetEcsNetworkInterfacesInterface {
  /// The EIP associated with the secondary private IP address of the ENI.  **NOTE:** Available in v1.163.0+.
  final pulumi.Input<List<GetEcsNetworkInterfacesInterfaceAssociatedPublicIp>> associatedPublicIps;
  /// The creation time.
  final pulumi.Input<String> creationTime;
  /// The description of the ENI.
  final pulumi.Input<String> description;
  /// The ID of the Network Interface.
  final pulumi.Input<String> id;
  /// The instance id.
  final pulumi.Input<String> instanceId;
  /// A list of IPv6 addresses that is assigned to the ENI.  **NOTE:** Available since v1.228.0.
  final pulumi.Input<List<String>> ipv6Sets;
  /// The MAC address of the ENI.
  final pulumi.Input<String> mac;
  /// Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  final pulumi.Input<String> name;
  /// The network interface id.
  final pulumi.Input<String> networkInterfaceId;
  /// The network interface name.
  final pulumi.Input<String> networkInterfaceName;
  /// The communication mode of the elastic network card.
  final pulumi.Input<String> networkInterfaceTrafficMode;
  /// The ID of the account to which the ENIC belongs.
  final pulumi.Input<String> ownerId;
  /// The primary private IP address of the ENI.
  final pulumi.Input<String> primaryIpAddress;
  /// Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  final pulumi.Input<String> privateIp;
  /// A list of secondary private IP address that is assigned to the ENI.
  final pulumi.Input<List<String>> privateIpAddresses;
  /// A list of secondary private IP address that is assigned to the ENI.
  final pulumi.Input<List<String>> privateIps;
  /// Number of network card queues.
  final pulumi.Input<int> queueNumber;
  /// The resource group id.
  final pulumi.Input<String> resourceGroupId;
  /// The security group ids.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The security groups.
  final pulumi.Input<List<String>> securityGroups;
  /// The service id.
  final pulumi.Input<int> serviceId;
  /// Whether the user of the elastic network card is a cloud product or a virtual vendor.
  final pulumi.Input<bool> serviceManaged;
  /// The status of ENI. Valid Values: `Attaching`, `Available`, `CreateFailed`, `Creating`, `Deleting`, `Detaching`, `InUse`, `Linked`, `Linking`, `Unlinking`.
  final pulumi.Input<String> status;
  /// A map of tags assigned to ENIs.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of ENI. Valid Values: `Primary`, `Secondary`.
  final pulumi.Input<String> type;
  /// The vpc id.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone id.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetEcsNetworkInterfacesInterface].
  /// [associatedPublicIps] The EIP associated with the secondary private IP address of the ENI.  **NOTE:** Available in v1.163.0+.
  /// [creationTime] The creation time.
  /// [description] The description of the ENI.
  /// [id] The ID of the Network Interface.
  /// [instanceId] The instance id.
  /// [ipv6Sets] A list of IPv6 addresses that is assigned to the ENI.  **NOTE:** Available since v1.228.0.
  /// [mac] The MAC address of the ENI.
  /// [name] Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  /// [networkInterfaceId] The network interface id.
  /// [networkInterfaceName] The network interface name.
  /// [networkInterfaceTrafficMode] The communication mode of the elastic network card.
  /// [ownerId] The ID of the account to which the ENIC belongs.
  /// [primaryIpAddress] The primary private IP address of the ENI.
  /// [privateIp] Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  /// [privateIpAddresses] A list of secondary private IP address that is assigned to the ENI.
  /// [privateIps] A list of secondary private IP address that is assigned to the ENI.
  /// [queueNumber] Number of network card queues.
  /// [resourceGroupId] The resource group id.
  /// [securityGroupIds] The security group ids.
  /// [securityGroups] The security groups.
  /// [serviceId] The service id.
  /// [serviceManaged] Whether the user of the elastic network card is a cloud product or a virtual vendor.
  /// [status] The status of ENI. Valid Values: `Attaching`, `Available`, `CreateFailed`, `Creating`, `Deleting`, `Detaching`, `InUse`, `Linked`, `Linking`, `Unlinking`.
  /// [tags] A map of tags assigned to ENIs.
  /// [type] The type of ENI. Valid Values: `Primary`, `Secondary`.
  /// [vpcId] The vpc id.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone id.
  GetEcsNetworkInterfacesInterface({
    required this.associatedPublicIps,
    required this.creationTime,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.ipv6Sets,
    required this.mac,
    required this.name,
    required this.networkInterfaceId,
    required this.networkInterfaceName,
    required this.networkInterfaceTrafficMode,
    required this.ownerId,
    required this.primaryIpAddress,
    required this.privateIp,
    required this.privateIpAddresses,
    required this.privateIps,
    required this.queueNumber,
    required this.resourceGroupId,
    required this.securityGroupIds,
    required this.securityGroups,
    required this.serviceId,
    required this.serviceManaged,
    required this.status,
    required this.tags,
    required this.type,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPublicIps': pulumi.Input.mapInputValue<List<GetEcsNetworkInterfacesInterfaceAssociatedPublicIp>, List<Map<String, dynamic>>>(associatedPublicIps, (value) => pulumi.Input.encodeList<GetEcsNetworkInterfacesInterfaceAssociatedPublicIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTime': creationTime,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'ipv6Sets': ipv6Sets,
      'mac': mac,
      'name': name,
      'networkInterfaceId': networkInterfaceId,
      'networkInterfaceName': networkInterfaceName,
      'networkInterfaceTrafficMode': networkInterfaceTrafficMode,
      'ownerId': ownerId,
      'primaryIpAddress': primaryIpAddress,
      'privateIp': privateIp,
      'privateIpAddresses': privateIpAddresses,
      'privateIps': privateIps,
      'queueNumber': queueNumber,
      'resourceGroupId': resourceGroupId,
      'securityGroupIds': securityGroupIds,
      'securityGroups': securityGroups,
      'serviceId': serviceId,
      'serviceManaged': serviceManaged,
      'status': status,
      'tags': tags,
      'type': type,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetEcsNetworkInterfacesInterface.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacesInterface(
      associatedPublicIps: (pulumi.Input.decodeList<GetEcsNetworkInterfacesInterfaceAssociatedPublicIp>(map['associatedPublicIps'], (value) => GetEcsNetworkInterfacesInterfaceAssociatedPublicIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ipv6Sets: ((map['ipv6Sets'] as List).cast<String>()).input(),
      mac: (map['mac'] as String).input(),
      name: (map['name'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      networkInterfaceName: (map['networkInterfaceName'] as String).input(),
      networkInterfaceTrafficMode: (map['networkInterfaceTrafficMode'] as String).input(),
      ownerId: (map['ownerId'] as String).input(),
      primaryIpAddress: (map['primaryIpAddress'] as String).input(),
      privateIp: (map['privateIp'] as String).input(),
      privateIpAddresses: ((map['privateIpAddresses'] as List).cast<String>()).input(),
      privateIps: ((map['privateIps'] as List).cast<String>()).input(),
      queueNumber: (map['queueNumber'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      securityGroups: ((map['securityGroups'] as List).cast<String>()).input(),
      serviceId: (map['serviceId'] as int).input(),
      serviceManaged: (map['serviceManaged'] as bool).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

