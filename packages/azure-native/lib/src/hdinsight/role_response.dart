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
  final AutoscaleResponse? autoscaleConfiguration;
  /// The data disks groups for the role.
  final List<DataDisksGroupsResponse>? dataDisksGroups;
  /// Indicates whether encrypt the data disks.
  final bool? encryptDataDisks;
  /// The hardware profile.
  final HardwareProfileResponse? hardwareProfile;
  /// The minimum instance count of the cluster.
  final int? minInstanceCount;
  /// The name of the role.
  final String? name;
  /// The operating system profile.
  final OsProfileResponse? osProfile;
  /// The list of script actions on the role.
  final List<ScriptActionResponse>? scriptActions;
  /// The instance count of the cluster.
  final int? targetInstanceCount;
  /// The name of the virtual machine group.
  final String? vMGroupName;
  /// The virtual network profile.
  final VirtualNetworkProfileResponse? virtualNetworkProfile;

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
      'autoscaleConfiguration': ?autoscaleConfiguration == null ? null : autoscaleConfiguration!.toMap(),
      'dataDisksGroups': ?dataDisksGroups == null ? null : pulumi.Input.encodeList<DataDisksGroupsResponse, Map<String, dynamic>>(dataDisksGroups!, (value) => value.toMap()),
      'encryptDataDisks': ?encryptDataDisks,
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'minInstanceCount': ?minInstanceCount,
      'name': ?name,
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'scriptActions': ?scriptActions == null ? null : pulumi.Input.encodeList<ScriptActionResponse, Map<String, dynamic>>(scriptActions!, (value) => value.toMap()),
      'targetInstanceCount': ?targetInstanceCount,
      'vMGroupName': ?vMGroupName,
      'virtualNetworkProfile': ?virtualNetworkProfile == null ? null : virtualNetworkProfile!.toMap(),
    };
  }

  factory RoleResponse.fromMap(Map<String, dynamic> map) {
    return RoleResponse(
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : AutoscaleResponse.fromMap((map['autoscaleConfiguration'] as Map).cast<String, dynamic>()),
      dataDisksGroups: map['dataDisksGroups'] == null ? null : pulumi.Input.decodeList<DataDisksGroupsResponse>(map['dataDisksGroups'], (value) => DataDisksGroupsResponse.fromMap((value as Map).cast<String, dynamic>())),
      encryptDataDisks: map['encryptDataDisks'] == null ? null : map['encryptDataDisks'] as bool,
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      minInstanceCount: map['minInstanceCount'] == null ? null : map['minInstanceCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      scriptActions: map['scriptActions'] == null ? null : pulumi.Input.decodeList<ScriptActionResponse>(map['scriptActions'], (value) => ScriptActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetInstanceCount: map['targetInstanceCount'] == null ? null : map['targetInstanceCount'] as int,
      vMGroupName: map['vMGroupName'] == null ? null : map['vMGroupName'] as String,
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : VirtualNetworkProfileResponse.fromMap((map['virtualNetworkProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

