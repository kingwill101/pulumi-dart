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
  const GetSwitchesArgs({
    this.cidrBlock,
    this.dryRun,
    this.ids,
    this.isDefault,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.routeTableId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchName,
    this.vswitchOwnerId,
    this.zoneId,
  });

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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchName: (() { final guardedValue = map['vswitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchOwnerId: (() { final guardedValue = map['vswitchOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

