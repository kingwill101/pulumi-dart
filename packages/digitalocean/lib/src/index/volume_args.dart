// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
  /// A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  final pulumi.Input<String>? description;
  /// Filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? filesystemType;
  /// Initial filesystem label for the block storage volume.
  final pulumi.Input<String>? initialFilesystemLabel;
  /// Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? initialFilesystemType;
  /// A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  final pulumi.Input<String>? name;
  /// The region that the block storage volume will be created in.
  final pulumi.Input<String> region;
  /// The size of the block storage volume in GiB. If updated, can only be expanded.
  final pulumi.Input<int> size;
  /// The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  final pulumi.Input<String>? snapshotId;
  /// A list of the tags to be applied to this Volume.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [VolumeArgs].
  /// [description] A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  /// [filesystemType] Filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [initialFilesystemLabel] Initial filesystem label for the block storage volume.
  /// [initialFilesystemType] Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [name] A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  /// [region] The region that the block storage volume will be created in.
  /// [size] The size of the block storage volume in GiB. If updated, can only be expanded.
  /// [snapshotId] The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  /// [tags] A list of the tags to be applied to this Volume.
  VolumeArgs({
    String? description,
    String? filesystemType,
    String? initialFilesystemLabel,
    String? initialFilesystemType,
    String? name,
    required String region,
    required int size,
    String? snapshotId,
    List<String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      filesystemType = pulumi.Input.asOptionalInput<String>(filesystemType),
      initialFilesystemLabel = pulumi.Input.asOptionalInput<String>(initialFilesystemLabel),
      initialFilesystemType = pulumi.Input.asOptionalInput<String>(initialFilesystemType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asInput<String>(region),
      size = pulumi.Input.asInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filesystemType': ?filesystemType,
      'initialFilesystemLabel': ?initialFilesystemLabel,
      'initialFilesystemType': ?initialFilesystemType,
      'name': ?name,
      'region': region,
      'size': size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      description: map['description'] == null ? null : map['description'] as String,
      filesystemType: map['filesystemType'] == null ? null : map['filesystemType'] as String,
      initialFilesystemLabel: map['initialFilesystemLabel'] == null ? null : map['initialFilesystemLabel'] as String,
      initialFilesystemType: map['initialFilesystemType'] == null ? null : map['initialFilesystemType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

