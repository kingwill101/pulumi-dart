// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale.dart';
import 'data_disks_groups.dart';
import 'hardware_profile.dart';
import 'os_profile.dart';
import 'script_action.dart';
import 'virtual_network_profile.dart';

/// Describes a role on the cluster.
class Role {
  /// The autoscale configurations.
  final Autoscale? autoscaleConfiguration;
  /// The data disks groups for the role.
  final List<DataDisksGroups>? dataDisksGroups;
  /// Indicates whether encrypt the data disks.
  final bool? encryptDataDisks;
  /// The hardware profile.
  final HardwareProfile? hardwareProfile;
  /// The minimum instance count of the cluster.
  final int? minInstanceCount;
  /// The name of the role.
  final String? name;
  /// The operating system profile.
  final OsProfile? osProfile;
  /// The list of script actions on the role.
  final List<ScriptAction>? scriptActions;
  /// The instance count of the cluster.
  final int? targetInstanceCount;
  /// The name of the virtual machine group.
  final String? vMGroupName;
  /// The virtual network profile.
  final VirtualNetworkProfile? virtualNetworkProfile;

  /// Creates a new [Role].
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
  Role({
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
      'dataDisksGroups': ?dataDisksGroups == null ? null : pulumi.Input.encodeList<DataDisksGroups, Map<String, dynamic>>(dataDisksGroups!, (value) => value.toMap()),
      'encryptDataDisks': ?encryptDataDisks,
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'minInstanceCount': ?minInstanceCount,
      'name': ?name,
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'scriptActions': ?scriptActions == null ? null : pulumi.Input.encodeList<ScriptAction, Map<String, dynamic>>(scriptActions!, (value) => value.toMap()),
      'targetInstanceCount': ?targetInstanceCount,
      'vMGroupName': ?vMGroupName,
      'virtualNetworkProfile': ?virtualNetworkProfile == null ? null : virtualNetworkProfile!.toMap(),
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : Autoscale.fromMap((map['autoscaleConfiguration'] as Map).cast<String, dynamic>()),
      dataDisksGroups: map['dataDisksGroups'] == null ? null : pulumi.Input.decodeList<DataDisksGroups>(map['dataDisksGroups'], (value) => DataDisksGroups.fromMap((value as Map).cast<String, dynamic>())),
      encryptDataDisks: map['encryptDataDisks'] == null ? null : map['encryptDataDisks'] as bool,
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      minInstanceCount: map['minInstanceCount'] == null ? null : map['minInstanceCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      osProfile: map['osProfile'] == null ? null : OsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      scriptActions: map['scriptActions'] == null ? null : pulumi.Input.decodeList<ScriptAction>(map['scriptActions'], (value) => ScriptAction.fromMap((value as Map).cast<String, dynamic>())),
      targetInstanceCount: map['targetInstanceCount'] == null ? null : map['targetInstanceCount'] as int,
      vMGroupName: map['vMGroupName'] == null ? null : map['vMGroupName'] as String,
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : VirtualNetworkProfile.fromMap((map['virtualNetworkProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

