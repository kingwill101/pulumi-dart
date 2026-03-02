// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_interface.dart';

/// Result data returned by getNetworkInterfaces.
class GetNetworkInterfacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// ID of the instance that the ENI is attached to.
  final String? instanceId;
  /// A list of ENIs. Each element contains the following attributes:
  final List<GetNetworkInterfacesInterface> interfaces;
  /// Name of the ENI.
  final String? name;
  final String? nameRegex;
  final List<String> names;
  final String? networkInterfaceName;
  final String? outputFile;
  final String? primaryIpAddress;
  /// Primary private IP of the ENI.
  final String? privateIp;
  /// The Id of resource group.
  final String? resourceGroupId;
  final String? securityGroupId;
  final bool? serviceManaged;
  /// Current status of the ENI.
  final String? status;
  /// A map of tags assigned to the ENI.
  final Map<String, String>? tags;
  final String? type;
  /// ID of the VPC that the ENI belongs to.
  final String? vpcId;
  /// ID of the vSwitch that the ENI is linked to.
  final String? vswitchId;

  /// Creates a new [GetNetworkInterfacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] ID of the instance that the ENI is attached to.
  /// [interfaces] A list of ENIs. Each element contains the following attributes:
  /// [name] Name of the ENI.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [networkInterfaceName] Optional.
  /// [outputFile] Optional.
  /// [primaryIpAddress] Optional.
  /// [privateIp] Primary private IP of the ENI.
  /// [resourceGroupId] The Id of resource group.
  /// [securityGroupId] Optional.
  /// [serviceManaged] Optional.
  /// [status] Current status of the ENI.
  /// [tags] A map of tags assigned to the ENI.
  /// [type] Optional.
  /// [vpcId] ID of the VPC that the ENI belongs to.
  /// [vswitchId] ID of the vSwitch that the ENI is linked to.
  GetNetworkInterfacesResult({
    required this.id,
    required this.ids,
    this.instanceId,
    required this.interfaces,
    this.name,
    this.nameRegex,
    required this.names,
    this.networkInterfaceName,
    this.outputFile,
    this.primaryIpAddress,
    this.privateIp,
    this.resourceGroupId,
    this.securityGroupId,
    this.serviceManaged,
    this.status,
    this.tags,
    this.type,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'interfaces': pulumi.Input.encodeList<GetNetworkInterfacesInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'networkInterfaceName': ?networkInterfaceName,
      'outputFile': ?outputFile,
      'primaryIpAddress': ?primaryIpAddress,
      'privateIp': ?privateIp,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'serviceManaged': ?serviceManaged,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetNetworkInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      interfaces: pulumi.Input.decodeList<GetNetworkInterfacesInterface>(map['interfaces'], (value) => GetNetworkInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : map['networkInterfaceName']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      primaryIpAddress: map['primaryIpAddress'] == null ? null : map['primaryIpAddress']! as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId']! as String,
      serviceManaged: map['serviceManaged'] == null ? null : map['serviceManaged']! as bool,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

