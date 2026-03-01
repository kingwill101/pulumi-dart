// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_oracle_volume.dart';

/// {@template pulumi_netapp_volume_group_oracle_volume_group_oracle_args_doc}
/// The set of arguments for VolumeGroupOracle.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_group_oracle_volume_group_oracle_args_doc}
class VolumeGroupOracleArgs {
  /// Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> accountName;
  /// The SAP System ID, maximum 3 characters, e.g. `OR1`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> applicationIdentifier;
  /// Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> groupDescription;
  /// The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `volume` blocks as defined below.
  final pulumi.Input<List<VolumeGroupOracleVolume>> volumes;

  /// Creates a new [VolumeGroupOracleArgs].
  /// [accountName] Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [applicationIdentifier] The SAP System ID, maximum 3 characters, e.g. `OR1`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [groupDescription] Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [location] The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [name] The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [resourceGroupName] The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumes] One or more `volume` blocks as defined below.
  VolumeGroupOracleArgs({
    required String accountName,
    required String applicationIdentifier,
    required String groupDescription,
    String? location,
    String? name,
    required String resourceGroupName,
    required List<VolumeGroupOracleVolume> volumes,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      applicationIdentifier = pulumi.Input.asInput<String>(applicationIdentifier),
      groupDescription = pulumi.Input.asInput<String>(groupDescription),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumes = pulumi.Input.asInput<List<VolumeGroupOracleVolume>>(volumes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'applicationIdentifier': applicationIdentifier,
      'groupDescription': groupDescription,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'volumes': pulumi.Input.mapInputValue<List<VolumeGroupOracleVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeGroupOracleVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumeGroupOracleArgs.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleArgs(
      accountName: map['accountName'] as String,
      applicationIdentifier: map['applicationIdentifier'] as String,
      groupDescription: map['groupDescription'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumes: pulumi.Input.decodeList<VolumeGroupOracleVolume>(map['volumes'], (value) => VolumeGroupOracleVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

