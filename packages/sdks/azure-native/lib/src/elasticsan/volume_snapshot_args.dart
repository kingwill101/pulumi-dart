// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_creation_data.dart';

/// {@template pulumi_elasticsan_volume_snapshot_args_doc}
/// The set of arguments for VolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_volume_snapshot_args_doc}
class VolumeSnapshotArgs {
  /// Data used when creating a volume snapshot.
  final pulumi.Input<SnapshotCreationData> creationData;
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume snapshot within the given volume group.
  final pulumi.Input<String>? snapshotName;
  /// The name of the VolumeGroup.
  final pulumi.Input<String> volumeGroupName;

  /// Creates a new [VolumeSnapshotArgs].
  /// [creationData] Data used when creating a volume snapshot.
  /// [elasticSanName] The name of the ElasticSan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the volume snapshot within the given volume group.
  /// [volumeGroupName] The name of the VolumeGroup.
  VolumeSnapshotArgs({
    required this.creationData,
    required this.elasticSanName,
    required this.resourceGroupName,
    this.snapshotName,
    required this.volumeGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData': pulumi.Input.mapInputValue<SnapshotCreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': ?snapshotName,
      'volumeGroupName': volumeGroupName,
    };
  }

  factory VolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotArgs(
      creationData: (SnapshotCreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>())).input(),
      elasticSanName: (map['elasticSanName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName'] as String).input(),
      volumeGroupName: (map['volumeGroupName'] as String).input(),
    );
  }
}

