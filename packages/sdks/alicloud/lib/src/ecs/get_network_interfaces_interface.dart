// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_interface_associated_public_ip.dart';

class GetNetworkInterfacesInterface {
  final List<GetNetworkInterfacesInterfaceAssociatedPublicIp> associatedPublicIps;
  /// Creation time of the ENI.
  final String creationTime;
  /// Description of the ENI.
  final String description;
  /// ID of the ENI.
  final String id;
  /// ID of the instance that the ENI is attached to.
  final String instanceId;
  final List<String> ipv6Sets;
  /// MAC address of the ENI.
  final String mac;
  /// Name of the ENI.
  final String name;
  final String networkInterfaceId;
  final String networkInterfaceName;
  final String networkInterfaceTrafficMode;
  final String ownerId;
  final String primaryIpAddress;
  /// Primary private IP of the ENI.
  final String privateIp;
  final List<String> privateIpAddresses;
  /// A list of secondary private IP address that is assigned to the ENI.
  final List<String> privateIps;
  final int queueNumber;
  /// The Id of resource group.
  final String resourceGroupId;
  final List<String> securityGroupIds;
  /// A list of security group that the ENI belongs to.
  final List<String> securityGroups;
  final int serviceId;
  final bool serviceManaged;
  /// Current status of the ENI.
  final String status;
  /// A map of tags assigned to the ENI.
  final Map<String, String> tags;
  final String type;
  /// ID of the VPC that the ENI belongs to.
  final String vpcId;
  /// ID of the vSwitch that the ENI is linked to.
  final String vswitchId;
  /// ID of the availability zone that the ENI belongs to.
  final String zoneId;

  /// Creates a new [GetNetworkInterfacesInterface].
  /// [associatedPublicIps] Required.
  /// [creationTime] Creation time of the ENI.
  /// [description] Description of the ENI.
  /// [id] ID of the ENI.
  /// [instanceId] ID of the instance that the ENI is attached to.
  /// [ipv6Sets] Required.
  /// [mac] MAC address of the ENI.
  /// [name] Name of the ENI.
  /// [networkInterfaceId] Required.
  /// [networkInterfaceName] Required.
  /// [networkInterfaceTrafficMode] Required.
  /// [ownerId] Required.
  /// [primaryIpAddress] Required.
  /// [privateIp] Primary private IP of the ENI.
  /// [privateIpAddresses] Required.
  /// [privateIps] A list of secondary private IP address that is assigned to the ENI.
  /// [queueNumber] Required.
  /// [resourceGroupId] The Id of resource group.
  /// [securityGroupIds] Required.
  /// [securityGroups] A list of security group that the ENI belongs to.
  /// [serviceId] Required.
  /// [serviceManaged] Required.
  /// [status] Current status of the ENI.
  /// [tags] A map of tags assigned to the ENI.
  /// [type] Required.
  /// [vpcId] ID of the VPC that the ENI belongs to.
  /// [vswitchId] ID of the vSwitch that the ENI is linked to.
  /// [zoneId] ID of the availability zone that the ENI belongs to.
  GetNetworkInterfacesInterface({
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
      'associatedPublicIps': pulumi.Input.encodeList<GetNetworkInterfacesInterfaceAssociatedPublicIp, Map<String, dynamic>>(associatedPublicIps, (value) => value.toMap()),
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

  factory GetNetworkInterfacesInterface.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesInterface(
      associatedPublicIps: pulumi.Input.decodeList<GetNetworkInterfacesInterfaceAssociatedPublicIp>(map['associatedPublicIps'], (value) => GetNetworkInterfacesInterfaceAssociatedPublicIp.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      ipv6Sets: (map['ipv6Sets'] as List).cast<String>(),
      mac: map['mac'] as String,
      name: map['name'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      networkInterfaceName: map['networkInterfaceName'] as String,
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] as String,
      ownerId: map['ownerId'] as String,
      primaryIpAddress: map['primaryIpAddress'] as String,
      privateIp: map['privateIp'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      privateIps: (map['privateIps'] as List).cast<String>(),
      queueNumber: map['queueNumber'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      serviceId: map['serviceId'] as int,
      serviceManaged: map['serviceManaged'] as bool,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

