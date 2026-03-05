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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: pulumi.Input.decodeList<GetEcsNetworkInterfacesInterface>(map['interfaces']!, (value) => GetEcsNetworkInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryIpAddress: (() { final guardedValue = map['primaryIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceManaged: (() { final guardedValue = map['serviceManaged']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

