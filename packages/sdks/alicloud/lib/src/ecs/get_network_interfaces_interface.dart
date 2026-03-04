// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_interface_associated_public_ip.dart';

class GetNetworkInterfacesInterface {
  final pulumi.Input<List<GetNetworkInterfacesInterfaceAssociatedPublicIp>>
  associatedPublicIps;

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
      'associatedPublicIps':
          pulumi.Input.mapInputValue<
            List<GetNetworkInterfacesInterfaceAssociatedPublicIp>,
            List<Map<String, dynamic>>
          >(
            associatedPublicIps,
            (value) =>
                pulumi.Input.encodeList<
                  GetNetworkInterfacesInterfaceAssociatedPublicIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      associatedPublicIps: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetNetworkInterfacesInterfaceAssociatedPublicIp>(
          map['associatedPublicIps']!,
          (value) => GetNetworkInterfacesInterfaceAssociatedPublicIp.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      ipv6Sets: pulumi.Input.fromValue(
        (map['ipv6Sets'] as List).cast<String>(),
      ),
      mac: pulumi.Input.fromValue(map['mac'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      networkInterfaceName: pulumi.Input.fromValue(
        map['networkInterfaceName'] as String,
      ),
      networkInterfaceTrafficMode: pulumi.Input.fromValue(
        map['networkInterfaceTrafficMode'] as String,
      ),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
      primaryIpAddress: pulumi.Input.fromValue(
        map['primaryIpAddress'] as String,
      ),
      privateIp: pulumi.Input.fromValue(map['privateIp'] as String),
      privateIpAddresses: pulumi.Input.fromValue(
        (map['privateIpAddresses'] as List).cast<String>(),
      ),
      privateIps: pulumi.Input.fromValue(
        (map['privateIps'] as List).cast<String>(),
      ),
      queueNumber: pulumi.Input.fromValue(map['queueNumber'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      securityGroups: pulumi.Input.fromValue(
        (map['securityGroups'] as List).cast<String>(),
      ),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as int),
      serviceManaged: pulumi.Input.fromValue(map['serviceManaged'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
