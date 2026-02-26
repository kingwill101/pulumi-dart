// ignore_for_file: unused_element, unnecessary_cast

import 'disk_resource_status_async_replication_status_response3.dart';

class DiskResourceStatusResponse3 {
  final DiskResourceStatusAsyncReplicationStatusResponse3 asyncPrimaryDisk;

  /// Key: disk, value: AsyncReplicationStatus message
  final Map<String, String> asyncSecondaryDisks;

  DiskResourceStatusResponse3({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncPrimaryDisk'] = asyncPrimaryDisk.toMap();
    map['asyncSecondaryDisks'] = asyncSecondaryDisks;
    return map;
  }

  factory DiskResourceStatusResponse3.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusResponse3(
      asyncPrimaryDisk:
          DiskResourceStatusAsyncReplicationStatusResponse3.fromMap(
              (map['asyncPrimaryDisk'] as Map).cast<String, dynamic>()),
      asyncSecondaryDisks:
          (map['asyncSecondaryDisks'] as Map).cast<String, String>(),
    );
  }
}
