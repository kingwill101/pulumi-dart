// ignore_for_file: unused_element, unnecessary_cast

import 'disk_resource_status_async_replication_status_response_compute_beta.dart';

class DiskResourceStatusResponseComputeBeta {
  final DiskResourceStatusAsyncReplicationStatusResponseComputeBeta
  asyncPrimaryDisk;

  /// Key: disk, value: AsyncReplicationStatus message
  final Map<String, String> asyncSecondaryDisks;

  /// Creates a new [DiskResourceStatusResponseComputeBeta].
  /// [asyncPrimaryDisk] Required.
  /// [asyncSecondaryDisks] Key: disk, value: AsyncReplicationStatus message
  DiskResourceStatusResponseComputeBeta({
    required this.asyncPrimaryDisk,
    required this.asyncSecondaryDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncPrimaryDisk': asyncPrimaryDisk.toMap(),
      'asyncSecondaryDisks': asyncSecondaryDisks,
    };
  }

  factory DiskResourceStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskResourceStatusResponseComputeBeta(
      asyncPrimaryDisk:
          DiskResourceStatusAsyncReplicationStatusResponseComputeBeta.fromMap(
            (map['asyncPrimaryDisk'] as Map).cast<String, dynamic>(),
          ),
      asyncSecondaryDisks: (map['asyncSecondaryDisks'] as Map)
          .cast<String, String>(),
    );
  }
}
