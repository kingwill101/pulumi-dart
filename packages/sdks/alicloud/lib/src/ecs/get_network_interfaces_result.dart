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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: pulumi.Input.decodeList<GetNetworkInterfacesInterface>(map['interfaces']!, (value) => GetNetworkInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
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

