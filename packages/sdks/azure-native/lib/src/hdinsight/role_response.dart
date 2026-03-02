// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_response.dart';
import 'data_disks_groups_response.dart';
import 'hardware_profile_response.dart';
import 'os_profile_response.dart';
import 'script_action_response.dart';
import 'virtual_network_profile_response.dart';

/// Describes a role on the cluster.
class RoleResponse {
  /// The autoscale configurations.
  final pulumi.Input<AutoscaleResponse>? autoscaleConfiguration;
  /// The data disks groups for the role.
  final pulumi.Input<List<DataDisksGroupsResponse>>? dataDisksGroups;
  /// Indicates whether encrypt the data disks.
  final pulumi.Input<bool>? encryptDataDisks;
  /// The hardware profile.
  final pulumi.Input<HardwareProfileResponse>? hardwareProfile;
  /// The minimum instance count of the cluster.
  final pulumi.Input<int>? minInstanceCount;
  /// The name of the role.
  final pulumi.Input<String>? name;
  /// The operating system profile.
  final pulumi.Input<OsProfileResponse>? osProfile;
  /// The list of script actions on the role.
  final pulumi.Input<List<ScriptActionResponse>>? scriptActions;
  /// The instance count of the cluster.
  final pulumi.Input<int>? targetInstanceCount;
  /// The name of the virtual machine group.
  final pulumi.Input<String>? vMGroupName;
  /// The virtual network profile.
  final pulumi.Input<VirtualNetworkProfileResponse>? virtualNetworkProfile;

  /// Creates a new [RoleResponse].
  /// [autoscaleConfiguration] The autoscale configurations.
  /// [dataDisksGroups] The data disks groups for the role.
  /// [encryptDataDisks] Indicates whether encrypt the data disks.
  /// [hardwareProfile] The hardware profile.
  /// [minInstanceCount] The minimum instance count of the cluster.
  /// [name] The name of the role.
  /// [osProfile] The operating system profile.
  /// [scriptActions] The list of script actions on the role.
  /// [targetInstanceCount] The instance count of the cluster.
  /// [vMGroupName] The name of the virtual machine group.
  /// [virtualNetworkProfile] The virtual network profile.
  RoleResponse({
    this.autoscaleConfiguration,
    this.dataDisksGroups,
    this.encryptDataDisks,
    this.hardwareProfile,
    this.minInstanceCount,
    this.name,
    this.osProfile,
    this.scriptActions,
    this.targetInstanceCount,
    this.vMGroupName,
    this.virtualNetworkProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<AutoscaleResponse, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'dataDisksGroups': ?pulumi.Input.mapOptionalInputValue<List<DataDisksGroupsResponse>, List<Map<String, dynamic>>>(dataDisksGroups, (value) => pulumi.Input.encodeList<DataDisksGroupsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptDataDisks': ?encryptDataDisks,
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfileResponse, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'minInstanceCount': ?minInstanceCount,
      'name': ?name,
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'scriptActions': ?pulumi.Input.mapOptionalInputValue<List<ScriptActionResponse>, List<Map<String, dynamic>>>(scriptActions, (value) => pulumi.Input.encodeList<ScriptActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetInstanceCount': ?targetInstanceCount,
      'vMGroupName': ?vMGroupName,
      'virtualNetworkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkProfileResponse, Map<String, dynamic>>(virtualNetworkProfile, (value) => value.toMap()),
    };
  }

  factory RoleResponse.fromMap(Map<String, dynamic> map) {
    return RoleResponse(
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (AutoscaleResponse.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      dataDisksGroups: map['dataDisksGroups'] == null ? null : (pulumi.Input.decodeList<DataDisksGroupsResponse>(map['dataDisksGroups']!, (value) => DataDisksGroupsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptDataDisks: map['encryptDataDisks'] == null ? null : (map['encryptDataDisks']! as bool).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfileResponse.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>())).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>())).input(),
      scriptActions: map['scriptActions'] == null ? null : (pulumi.Input.decodeList<ScriptActionResponse>(map['scriptActions']!, (value) => ScriptActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetInstanceCount: map['targetInstanceCount'] == null ? null : (map['targetInstanceCount']! as int).input(),
      vMGroupName: map['vMGroupName'] == null ? null : (map['vMGroupName']! as String).input(),
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : (VirtualNetworkProfileResponse.fromMap((map['virtualNetworkProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

