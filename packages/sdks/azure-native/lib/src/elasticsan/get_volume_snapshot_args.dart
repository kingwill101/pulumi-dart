// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_volume_snapshot_args_doc}
/// Arguments for getVolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_volume_snapshot_args_doc}
class GetVolumeSnapshotArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume snapshot within the given volume group.
  final pulumi.Input<String> snapshotName;
  /// The name of the VolumeGroup.
  final pulumi.Input<String> volumeGroupName;

  /// Creates a new [GetVolumeSnapshotArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the volume snapshot within the given volume group.
  /// [volumeGroupName] The name of the VolumeGroup.
  GetVolumeSnapshotArgs({
    required pulumi.Output<String> elasticSanName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> snapshotName,
    required pulumi.Output<String> volumeGroupName,
  }) :
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asInput<String>(snapshotName),
      volumeGroupName = pulumi.Input.asInput<String>(volumeGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': snapshotName,
      'volumeGroupName': volumeGroupName,
    };
  }

  factory GetVolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotArgs(
      elasticSanName: pulumi.Output.create<String>(map['elasticSanName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snapshotName: pulumi.Output.create<String>(map['snapshotName'] as String),
      volumeGroupName: pulumi.Output.create<String>(map['volumeGroupName'] as String),
    );
  }
}

