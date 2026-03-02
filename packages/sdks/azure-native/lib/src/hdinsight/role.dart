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
  final pulumi.Input<Autoscale>? autoscaleConfiguration;
  /// The data disks groups for the role.
  final pulumi.Input<List<DataDisksGroups>>? dataDisksGroups;
  /// Indicates whether encrypt the data disks.
  final pulumi.Input<bool>? encryptDataDisks;
  /// The hardware profile.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// The minimum instance count of the cluster.
  final pulumi.Input<int>? minInstanceCount;
  /// The name of the role.
  final pulumi.Input<String>? name;
  /// The operating system profile.
  final pulumi.Input<OsProfile>? osProfile;
  /// The list of script actions on the role.
  final pulumi.Input<List<ScriptAction>>? scriptActions;
  /// The instance count of the cluster.
  final pulumi.Input<int>? targetInstanceCount;
  /// The name of the virtual machine group.
  final pulumi.Input<String>? vMGroupName;
  /// The virtual network profile.
  final pulumi.Input<VirtualNetworkProfile>? virtualNetworkProfile;

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
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<Autoscale, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'dataDisksGroups': ?pulumi.Input.mapOptionalInputValue<List<DataDisksGroups>, List<Map<String, dynamic>>>(dataDisksGroups, (value) => pulumi.Input.encodeList<DataDisksGroups, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptDataDisks': ?encryptDataDisks,
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'minInstanceCount': ?minInstanceCount,
      'name': ?name,
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'scriptActions': ?pulumi.Input.mapOptionalInputValue<List<ScriptAction>, List<Map<String, dynamic>>>(scriptActions, (value) => pulumi.Input.encodeList<ScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetInstanceCount': ?targetInstanceCount,
      'vMGroupName': ?vMGroupName,
      'virtualNetworkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkProfile, Map<String, dynamic>>(virtualNetworkProfile, (value) => value.toMap()),
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (Autoscale.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      dataDisksGroups: map['dataDisksGroups'] == null ? null : (pulumi.Input.decodeList<DataDisksGroups>(map['dataDisksGroups']!, (value) => DataDisksGroups.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptDataDisks: map['encryptDataDisks'] == null ? null : (map['encryptDataDisks']! as bool).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfile.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>())).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfile.fromMap((map['osProfile']! as Map).cast<String, dynamic>())).input(),
      scriptActions: map['scriptActions'] == null ? null : (pulumi.Input.decodeList<ScriptAction>(map['scriptActions']!, (value) => ScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetInstanceCount: map['targetInstanceCount'] == null ? null : (map['targetInstanceCount']! as int).input(),
      vMGroupName: map['vMGroupName'] == null ? null : (map['vMGroupName']! as String).input(),
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : (VirtualNetworkProfile.fromMap((map['virtualNetworkProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

