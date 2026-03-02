// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_interface_associated_public_ip.dart';

class GetNetworkInterfacesInterface {
  final pulumi.Input<List<GetNetworkInterfacesInterfaceAssociatedPublicIp>> associatedPublicIps;
  /// Creation time of the ENI.
  final pulumi.Input<String> creationTime;
  /// Description of the ENI.
  final pulumi.Input<String> description;
  /// ID of the ENI.
  final pulumi.Input<String> id;
  /// ID of the instance that the ENI is attached to.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<List<String>> ipv6Sets;
  /// MAC address of the ENI.
  final pulumi.Input<String> mac;
  /// Name of the ENI.
  final pulumi.Input<String> name;
  final pulumi.Input<String> networkInterfaceId;
  final pulumi.Input<String> networkInterfaceName;
  final pulumi.Input<String> networkInterfaceTrafficMode;
  final pulumi.Input<String> ownerId;
  final pulumi.Input<String> primaryIpAddress;
  /// Primary private IP of the ENI.
  final pulumi.Input<String> privateIp;
  final pulumi.Input<List<String>> privateIpAddresses;
  /// A list of secondary private IP address that is assigned to the ENI.
  final pulumi.Input<List<String>> privateIps;
  final pulumi.Input<int> queueNumber;
  /// The Id of resource group.
  final pulumi.Input<String> resourceGroupId;
  final pulumi.Input<List<String>> securityGroupIds;
  /// A list of security group that the ENI belongs to.
  final pulumi.Input<List<String>> securityGroups;
  final pulumi.Input<int> serviceId;
  final pulumi.Input<bool> serviceManaged;
  /// Current status of the ENI.
  final pulumi.Input<String> status;
  /// A map of tags assigned to the ENI.
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> type;
  /// ID of the VPC that the ENI belongs to.
  final pulumi.Input<String> vpcId;
  /// ID of the vSwitch that the ENI is linked to.
  final pulumi.Input<String> vswitchId;
  /// ID of the availability zone that the ENI belongs to.
  final pulumi.Input<String> zoneId;

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
      'associatedPublicIps': pulumi.Input.mapInputValue<List<GetNetworkInterfacesInterfaceAssociatedPublicIp>, List<Map<String, dynamic>>>(associatedPublicIps, (value) => pulumi.Input.encodeList<GetNetworkInterfacesInterfaceAssociatedPublicIp, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      associatedPublicIps: (pulumi.Input.decodeList<GetNetworkInterfacesInterfaceAssociatedPublicIp>(map['associatedPublicIps'], (value) => GetNetworkInterfacesInterfaceAssociatedPublicIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

