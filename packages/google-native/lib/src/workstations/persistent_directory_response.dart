// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk_response.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryResponse {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDiskResponse gcePd;

  /// Optional. Location of this directory in the running workstation.
  final String mountPath;

  /// Creates a new [PersistentDirectoryResponse].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectoryResponse({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePd'] = gcePd.toMap();
    map['mountPath'] = mountPath;
    return map;
  }

  factory PersistentDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryResponse(
      gcePd: GceRegionalPersistentDiskResponse.fromMap(
          (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] as String,
    );
  }
}
