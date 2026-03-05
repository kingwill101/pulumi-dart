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
      autoscaleConfiguration: (() { final guardedValue = map['autoscaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisksGroups: (() { final guardedValue = map['dataDisksGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDisksGroupsResponse>(guardedValue, (value) => DataDisksGroupsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptDataDisks: (() { final guardedValue = map['encryptDataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minInstanceCount: (() { final guardedValue = map['minInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptActions: (() { final guardedValue = map['scriptActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScriptActionResponse>(guardedValue, (value) => ScriptActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetInstanceCount: (() { final guardedValue = map['targetInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vMGroupName: (() { final guardedValue = map['vMGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkProfile: (() { final guardedValue = map['virtualNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

