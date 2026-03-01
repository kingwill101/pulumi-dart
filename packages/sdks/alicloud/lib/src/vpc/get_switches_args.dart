// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_switches_get_switches_args_doc}
/// Arguments for getSwitches.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_switches_get_switches_args_doc}
class GetSwitchesArgs {
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final pulumi.Input<String>? cidrBlock;
  /// Specifies whether to precheck this request only. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// A list of vSwitch IDs.
  final pulumi.Input<List<String>>? ids;
  /// Indicate whether the vSwitch is created by the system.
  final pulumi.Input<bool>? isDefault;
  /// A regex string to filter results by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Id of resource group which VSWitch belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The route table ID of the vSwitch.
  final pulumi.Input<String>? routeTableId;
  /// The status of the vSwitch. Valid values: `Available` and `Pending`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC that owns the vSwitch.
  final pulumi.Input<String>? vpcId;
  /// The name of the vSwitch.
  final pulumi.Input<String>? vswitchName;
  /// The vSwitch owner id.
  final pulumi.Input<int>? vswitchOwnerId;
  /// The availability zone of the vSwitch.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetSwitchesArgs].
  /// [cidrBlock] Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  /// [dryRun] Specifies whether to precheck this request only. Valid values: `true` and `false`.
  /// [ids] A list of vSwitch IDs.
  /// [isDefault] Indicate whether the vSwitch is created by the system.
  /// [nameRegex] A regex string to filter results by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which VSWitch belongs.
  /// [routeTableId] The route table ID of the vSwitch.
  /// [status] The status of the vSwitch. Valid values: `Available` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] ID of the VPC that owns the vSwitch.
  /// [vswitchName] The name of the vSwitch.
  /// [vswitchOwnerId] The vSwitch owner id.
  /// [zoneId] The availability zone of the vSwitch.
  GetSwitchesArgs({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchName,
    pulumi.Output<int>? vswitchOwnerId,
    pulumi.Output<String>? zoneId,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName),
      vswitchOwnerId = pulumi.Input.asOptionalInput<int>(vswitchOwnerId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'dryRun': ?dryRun,
      'ids': ?ids,
      'isDefault': ?isDefault,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'routeTableId': ?routeTableId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'vswitchOwnerId': ?vswitchOwnerId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSwitchesArgs.fromMap(Map<String, dynamic> map) {
    return GetSwitchesArgs(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchName: map['vswitchName'] == null ? null : pulumi.Output.create<String>(map['vswitchName'] as String),
      vswitchOwnerId: map['vswitchOwnerId'] == null ? null : pulumi.Output.create<int>(map['vswitchOwnerId'] as int),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

