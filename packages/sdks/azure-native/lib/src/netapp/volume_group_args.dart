// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_meta_data.dart';
import 'volume_group_volume_properties.dart';

/// {@template pulumi_netapp_volume_group_args_doc}
/// The set of arguments for VolumeGroup.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_group_args_doc}
class VolumeGroupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Volume group details
  final pulumi.Input<VolumeGroupMetaData>? groupMetaData;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volumeGroup
  final pulumi.Input<String>? volumeGroupName;
  /// List of volumes from group
  final pulumi.Input<List<VolumeGroupVolumeProperties>>? volumes;

  /// Creates a new [VolumeGroupArgs].
  /// [accountName] The name of the NetApp account
  /// [groupMetaData] Volume group details
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the volumeGroup
  /// [volumes] List of volumes from group
  VolumeGroupArgs({
    required this.accountName,
    this.groupMetaData,
    this.location,
    required this.resourceGroupName,
    this.volumeGroupName,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'groupMetaData': ?pulumi.Input.mapOptionalInputValue<VolumeGroupMetaData, Map<String, dynamic>>(groupMetaData, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': ?volumeGroupName,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeGroupVolumeProperties>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeGroupVolumeProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return VolumeGroupArgs(
      accountName: (map['accountName'] as String).input(),
      groupMetaData: map['groupMetaData'] == null ? null : (VolumeGroupMetaData.fromMap((map['groupMetaData'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      volumeGroupName: map['volumeGroupName'] == null ? null : (map['volumeGroupName'] as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<VolumeGroupVolumeProperties>(map['volumes'], (value) => VolumeGroupVolumeProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

