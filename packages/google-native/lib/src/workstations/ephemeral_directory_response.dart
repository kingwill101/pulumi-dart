// ignore_for_file: unused_element, unnecessary_cast

import 'gce_persistent_disk_response.dart';

/// An ephemeral directory which won't persist across workstation sessions. It is freshly created on every workstation start operation.
class EphemeralDirectoryResponse {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  final GcePersistentDiskResponse gcePd;

  /// Location of this directory in the running workstation.
  final String mountPath;

  /// Creates a new [EphemeralDirectoryResponse].
  /// [gcePd] An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Location of this directory in the running workstation.
  EphemeralDirectoryResponse({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePd'] = gcePd.toMap();
    map['mountPath'] = mountPath;
    return map;
  }

  factory EphemeralDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return EphemeralDirectoryResponse(
      gcePd: GcePersistentDiskResponse.fromMap(
          (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] as String,
    );
  }
}
