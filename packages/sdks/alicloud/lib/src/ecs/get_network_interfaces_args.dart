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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? networkInterfaceName,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? primaryIpAddress,
    pulumi.Output<String>? privateIp,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<bool>? serviceManaged,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      networkInterfaceName = pulumi.Input.asOptionalInput<String>(networkInterfaceName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      primaryIpAddress = pulumi.Input.asOptionalInput<String>(primaryIpAddress),
      privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      serviceManaged = pulumi.Input.asOptionalInput<bool>(serviceManaged),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      primaryIpAddress: map['primaryIpAddress'] == null ? null : pulumi.Output.create<String>(map['primaryIpAddress'] as String),
      privateIp: map['privateIp'] == null ? null : pulumi.Output.create<String>(map['privateIp'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      serviceManaged: map['serviceManaged'] == null ? null : pulumi.Output.create<bool>(map['serviceManaged'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

