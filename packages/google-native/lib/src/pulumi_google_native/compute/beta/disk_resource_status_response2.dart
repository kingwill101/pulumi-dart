// ignore_for_file: unused_element, unnecessary_cast

import 'disk_resource_status_async_replication_status_response2.dart';

class DiskResourceStatusResponse2 {
  final DiskResourceStatusAsyncReplicationStatusResponse2 asyncPrimaryDisk;

  /// Key: disk, value: AsyncReplicationStatus message
  final Map<String, String> asyncSecondaryDisks;

  DiskResourceStatusResponse2({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncPrimaryDisk'] = asyncPrimaryDisk.toMap();
    map['asyncSecondaryDisks'] = asyncSecondaryDisks;
    return map;
  }

  factory DiskResourceStatusResponse2.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusResponse2(
      asyncPrimaryDisk:
          DiskResourceStatusAsyncReplicationStatusResponse2.fromMap(
              (map['asyncPrimaryDisk'] as Map).cast<String, dynamic>()),
      asyncSecondaryDisks:
          (map['asyncSecondaryDisks'] as Map).cast<String, String>(),
    );
  }
}
