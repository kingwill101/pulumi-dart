// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entry of path and mount mode you want to mount into task container.
class ContainerHostBatchBindMountEntryResponse {
  /// For Linux, if you mount this path as a read/write mode, this does not mean that all users in container have the read/write access for the path, it depends on the access in host VM. If this path is mounted read-only, all users within the container will not be able to modify the path.
  final pulumi.Input<bool>? isReadOnly;
  /// The paths which will be mounted to container task's container.
  final pulumi.Input<String>? source;

  /// Creates a new [ContainerHostBatchBindMountEntryResponse].
  /// [isReadOnly] For Linux, if you mount this path as a read/write mode, this does not mean that all users in container have the read/write access for the path, it depends on the access in host VM. If this path is mounted read-only, all users within the container will not be able to modify the path.
  /// [source] The paths which will be mounted to container task's container.
  ContainerHostBatchBindMountEntryResponse({
    this.isReadOnly,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isReadOnly': ?isReadOnly,
      'source': ?source,
    };
  }

  factory ContainerHostBatchBindMountEntryResponse.fromMap(Map<String, dynamic> map) {
    return ContainerHostBatchBindMountEntryResponse(
      isReadOnly: map['isReadOnly'] == null ? null : (map['isReadOnly'] as bool).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

