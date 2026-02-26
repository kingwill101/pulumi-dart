// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk_response2.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryResponse2 {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDiskResponse2 gcePd;

  /// Optional. Location of this directory in the running workstation.
  final String mountPath;

  PersistentDirectoryResponse2({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePd'] = gcePd.toMap();
    map['mountPath'] = mountPath;
    return map;
  }

  factory PersistentDirectoryResponse2.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryResponse2(
      gcePd: GceRegionalPersistentDiskResponse2.fromMap(
          (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] as String,
    );
  }
}
