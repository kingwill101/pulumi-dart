// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_volume_snapshot_get_volume_snapshot_args_doc}
/// Arguments for getVolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_volume_snapshot_get_volume_snapshot_args_doc}
class GetVolumeSnapshotArgs {
  /// The name of the Elastic SAN Volume Snapshot.
  final pulumi.Input<String> name;
  /// The Elastic SAN Volume Group ID within which the Elastic SAN Volume Snapshot exists.
  final pulumi.Input<String> volumeGroupId;

  /// Creates a new [GetVolumeSnapshotArgs].
  /// [name] The name of the Elastic SAN Volume Snapshot.
  /// [volumeGroupId] The Elastic SAN Volume Group ID within which the Elastic SAN Volume Snapshot exists.
  GetVolumeSnapshotArgs({
    required String name,
    required String volumeGroupId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      volumeGroupId = pulumi.Input.asInput<String>(volumeGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'volumeGroupId': volumeGroupId,
    };
  }

  factory GetVolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotArgs(
      name: map['name'] as String,
      volumeGroupId: map['volumeGroupId'] as String,
    );
  }
}

