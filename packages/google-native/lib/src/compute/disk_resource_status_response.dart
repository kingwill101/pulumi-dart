// ignore_for_file: unused_element, unnecessary_cast

import 'disk_resource_status_async_replication_status_response.dart';

class DiskResourceStatusResponse {
  final DiskResourceStatusAsyncReplicationStatusResponse asyncPrimaryDisk;
  /// Key: disk, value: AsyncReplicationStatus message
  final Map<String, String> asyncSecondaryDisks;
  /// Space used by data stored in the disk (in bytes). Note that this field is set only when the disk is in a storage pool.
  final String usedBytes;

  /// Creates a new [DiskResourceStatusResponse].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  /// [usedBytes] Space used by data stored in the disk (in bytes). Note that this field is set only when the disk is in a storage pool.
  DiskResourceStatusResponse({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
    required this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncPrimaryDisk': asyncPrimaryDisk.toMap(),
      'asyncSecondaryDisks': asyncSecondaryDisks,
      'usedBytes': usedBytes,
    };
  }

  factory DiskResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusResponse(
      asyncPrimaryDisk: DiskResourceStatusAsyncReplicationStatusResponse.fromMap((map['asyncPrimaryDisk'] as Map).cast<String, dynamic>()),
      asyncSecondaryDisks: (map['asyncSecondaryDisks'] as Map).cast<String, String>(),
      usedBytes: map['usedBytes'] as String,
    );
  }
}

