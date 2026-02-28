// ignore_for_file: unused_element, unnecessary_cast

import 'disk_resource_status_async_replication_status_response_compute_v1.dart';

class DiskResourceStatusResponseComputeV1 {
  final DiskResourceStatusAsyncReplicationStatusResponseComputeV1
      asyncPrimaryDisk;

  /// Key: disk, value: AsyncReplicationStatus message
  final Map<String, String> asyncSecondaryDisks;

  /// Creates a new [DiskResourceStatusResponseComputeV1].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  DiskResourceStatusResponseComputeV1({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncPrimaryDisk'] = asyncPrimaryDisk.toMap();
    map['asyncSecondaryDisks'] = asyncSecondaryDisks;
    return map;
  }

  factory DiskResourceStatusResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusResponseComputeV1(
      asyncPrimaryDisk:
          DiskResourceStatusAsyncReplicationStatusResponseComputeV1.fromMap(
              (map['asyncPrimaryDisk'] as Map).cast<String, dynamic>()),
      asyncSecondaryDisks:
          (map['asyncSecondaryDisks'] as Map).cast<String, String>(),
    );
  }
}
