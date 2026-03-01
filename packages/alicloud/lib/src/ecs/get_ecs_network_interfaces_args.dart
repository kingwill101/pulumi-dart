// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_network_interfaces_get_ecs_network_interfaces_args_doc}
/// Arguments for getEcsNetworkInterfaces.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_network_interfaces_get_ecs_network_interfaces_args_doc}
class GetEcsNetworkInterfacesArgs {
  /// A list of Network Interface IDs.
  final pulumi.Input<List<String>>? ids;
  /// The instance id.
  final pulumi.Input<String>? instanceId;
  /// Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Network Interface name.
  final pulumi.Input<String>? nameRegex;
  /// The network interface name.
  final pulumi.Input<String>? networkInterfaceName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The primary private IP address of the ENI.
  final pulumi.Input<String>? primaryIpAddress;
  /// Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  final pulumi.Input<String>? privateIp;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The security group id.
  final pulumi.Input<String>? securityGroupId;
  /// Whether the user of the elastic network card is a cloud product or a virtual vendor.
  final pulumi.Input<bool>? serviceManaged;
  /// The status of ENI. Valid Values: `Attaching`, `Available`, `CreateFailed`, `Creating`, `Deleting`, `Detaching`, `InUse`, `Linked`, `Linking`, `Unlinking`.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to ENIs.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of ENI. Valid Values: `Primary`, `Secondary`.
  final pulumi.Input<String>? type;
  /// The vpc id.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetEcsNetworkInterfacesArgs].
  /// [ids] A list of Network Interface IDs.
  /// [instanceId] The instance id.
  /// [name] Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  /// [nameRegex] A regex string to filter results by Network Interface name.
  /// [networkInterfaceName] The network interface name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [primaryIpAddress] The primary private IP address of the ENI.
  /// [privateIp] Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  /// [resourceGroupId] The resource group id.
  /// [securityGroupId] The security group id.
  /// [serviceManaged] Whether the user of the elastic network card is a cloud product or a virtual vendor.
  /// [status] The status of ENI. Valid Values: `Attaching`, `Available`, `CreateFailed`, `Creating`, `Deleting`, `Detaching`, `InUse`, `Linked`, `Linking`, `Unlinking`.
  /// [tags] A map of tags assigned to ENIs.
  /// [type] The type of ENI. Valid Values: `Primary`, `Secondary`.
  /// [vpcId] The vpc id.
  /// [vswitchId] The vswitch id.
  GetEcsNetworkInterfacesArgs({
    List<String>? ids,
    String? instanceId,
    String? name,
    String? nameRegex,
    String? networkInterfaceName,
    String? outputFile,
    String? primaryIpAddress,
    String? privateIp,
    String? resourceGroupId,
    String? securityGroupId,
    bool? serviceManaged,
    String? status,
    Map<String, String>? tags,
    String? type,
    String? vpcId,
    String? vswitchId,
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

  factory GetEcsNetworkInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      networkInterfaceName: map['networkInterfaceName'] == null ? null : map['networkInterfaceName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      primaryIpAddress: map['primaryIpAddress'] == null ? null : map['primaryIpAddress'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      serviceManaged: map['serviceManaged'] == null ? null : map['serviceManaged'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

