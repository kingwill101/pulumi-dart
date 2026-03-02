// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_network_interfaces_interface.dart';

/// Result data returned by getEcsNetworkInterfaces.
class GetEcsNetworkInterfacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The instance id.
  final String? instanceId;
  /// A list of Ecs Network Interfaces. Each element contains the following attributes:
  final List<GetEcsNetworkInterfacesInterface> interfaces;
  /// The network interface name.
  final String? name;
  final String? nameRegex;
  /// A list of Network Interface names.
  final List<String> names;
  /// The network interface name.
  final String? networkInterfaceName;
  final String? outputFile;
  /// The primary private IP address of the ENI.
  final String? primaryIpAddress;
  /// The primary private IP address of the ENI.
  final String? privateIp;
  /// The resource group id.
  final String? resourceGroupId;
  final String? securityGroupId;
  /// Whether the user of the elastic network card is a cloud product or a virtual vendor.
  final bool? serviceManaged;
  /// The status of the ENI.
  final String? status;
  /// The tags.
  final Map<String, String>? tags;
  /// The type of the ENI.
  final String? type;
  /// The Vpc Id.
  final String? vpcId;
  /// The vswitch id.
  final String? vswitchId;

  /// Creates a new [GetEcsNetworkInterfacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The instance id.
  /// [interfaces] A list of Ecs Network Interfaces. Each element contains the following attributes:
  /// [name] The network interface name.
  /// [nameRegex] Optional.
  /// [names] A list of Network Interface names.
  /// [networkInterfaceName] The network interface name.
  /// [outputFile] Optional.
  /// [primaryIpAddress] The primary private IP address of the ENI.
  /// [privateIp] The primary private IP address of the ENI.
  /// [resourceGroupId] The resource group id.
  /// [securityGroupId] Optional.
  /// [serviceManaged] Whether the user of the elastic network card is a cloud product or a virtual vendor.
  /// [status] The status of the ENI.
  /// [tags] The tags.
  /// [type] The type of the ENI.
  /// [vpcId] The Vpc Id.
  /// [vswitchId] The vswitch id.
  GetEcsNetworkInterfacesResult({
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
      'interfaces': pulumi.Input.encodeList<GetEcsNetworkInterfacesInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
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

  factory GetEcsNetworkInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      interfaces: pulumi.Input.decodeList<GetEcsNetworkInterfacesInterface>(map['interfaces'], (value) => GetEcsNetworkInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
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

