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
  final pulumi.Input<VolumeGroupMetaData?>? groupMetaData;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volumeGroup
  final pulumi.Input<String?>? volumeGroupName;
  /// List of volumes from group
  final pulumi.Input<List<VolumeGroupVolumeProperties>?>? volumes;

  /// Creates a new [VolumeGroupArgs].
  /// [accountName] The name of the NetApp account
  /// [groupMetaData] Volume group details
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the volumeGroup
  /// [volumes] List of volumes from group
  const VolumeGroupArgs({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      groupMetaData: (() { final guardedValue = map['groupMetaData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeGroupMetaData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeGroupName: (() { final guardedValue = map['volumeGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeGroupVolumeProperties>(guardedValue, (value) => VolumeGroupVolumeProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
