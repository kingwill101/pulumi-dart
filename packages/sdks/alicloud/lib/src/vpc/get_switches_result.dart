// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_switches_vswitch.dart';

/// Result data returned by getSwitches.
class GetSwitchesResult {
  /// CIDR block of the vSwitch.
  final String? cidrBlock;
  final bool? dryRun;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of vSwitch IDs.
  final List<String> ids;
  /// Whether the vSwitch is the default one in the region.
  final bool? isDefault;
  final String? nameRegex;
  /// A list of vSwitch names.
  final List<String> names;
  final String? outputFile;
  /// The resource group ID of the vSwitch.
  final String? resourceGroupId;
  /// The route table ID of the vSwitch.
  final String? routeTableId;
  /// The status of the vSwitch.
  final String? status;
  /// The Tags of the vSwitch.
  final Map<String, String>? tags;
  /// ID of the VPC that owns the vSwitch.
  final String? vpcId;
  /// Name of the vSwitch.
  final String? vswitchName;
  final int? vswitchOwnerId;
  /// A list of VSwitches. Each element contains the following attributes:
  final List<GetSwitchesVswitch> vswitches;
  /// ID of the availability zone where the vSwitch is located.
  final String? zoneId;

  /// Creates a new [GetSwitchesResult].
  /// [cidrBlock] CIDR block of the vSwitch.
  /// [dryRun] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of vSwitch IDs.
  /// [isDefault] Whether the vSwitch is the default one in the region.
  /// [nameRegex] Optional.
  /// [names] A list of vSwitch names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The resource group ID of the vSwitch.
  /// [routeTableId] The route table ID of the vSwitch.
  /// [status] The status of the vSwitch.
  /// [tags] The Tags of the vSwitch.
  /// [vpcId] ID of the VPC that owns the vSwitch.
  /// [vswitchName] Name of the vSwitch.
  /// [vswitchOwnerId] Optional.
  /// [vswitches] A list of VSwitches. Each element contains the following attributes:
  /// [zoneId] ID of the availability zone where the vSwitch is located.
  GetSwitchesResult({
    this.cidrBlock,
    this.dryRun,
    required this.id,
    required this.ids,
    this.isDefault,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.routeTableId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchName,
    this.vswitchOwnerId,
    required this.vswitches,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'dryRun': ?dryRun,
      'id': id,
      'ids': ids,
      'isDefault': ?isDefault,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'routeTableId': ?routeTableId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'vswitchOwnerId': ?vswitchOwnerId,
      'vswitches': pulumi.Input.encodeList<GetSwitchesVswitch, Map<String, dynamic>>(vswitches, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetSwitchesResult.fromMap(Map<String, dynamic> map) {
    return GetSwitchesResult(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vswitchName: (() { final guardedValue = map['vswitchName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vswitchOwnerId: (() { final guardedValue = map['vswitchOwnerId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      vswitches: pulumi.Input.decodeList<GetSwitchesVswitch>(map['vswitches']!, (value) => GetSwitchesVswitch.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

