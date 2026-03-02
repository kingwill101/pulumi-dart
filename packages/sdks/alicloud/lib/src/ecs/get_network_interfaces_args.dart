// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_network_interfaces_get_network_interfaces_args_doc}
/// Arguments for getNetworkInterfaces.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_network_interfaces_get_network_interfaces_args_doc}
class GetNetworkInterfacesArgs {
  final pulumi.Input<List<String>>? ids;
  /// ID of the instance that the ENI is attached to.
  final pulumi.Input<String>? instanceId;
  /// Name of the ENI.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? networkInterfaceName;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? primaryIpAddress;
  /// Primary private IP of the ENI.
  final pulumi.Input<String>? privateIp;
  /// The Id of resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? securityGroupId;
  final pulumi.Input<bool>? serviceManaged;
  /// Current status of the ENI.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the ENI.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;
  /// ID of the VPC that the ENI belongs to.
  final pulumi.Input<String>? vpcId;
  /// ID of the vSwitch that the ENI is linked to.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetNetworkInterfacesArgs].
  /// [ids] Optional.
  /// [instanceId] ID of the instance that the ENI is attached to.
  /// [name] Name of the ENI.
  /// [nameRegex] Optional.
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
  GetNetworkInterfacesArgs({
    this.ids,
    this.instanceId,
    this.name,
    this.nameRegex,
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
      'ids': ?ids,
      'instanceId': ?instanceId,
      'name': ?name,
      'nameRegex': ?nameRegex,
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

  factory GetNetworkInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : (map['networkInterfaceName']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      primaryIpAddress: map['primaryIpAddress'] == null ? null : (map['primaryIpAddress']! as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      serviceManaged: map['serviceManaged'] == null ? null : (map['serviceManaged']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

