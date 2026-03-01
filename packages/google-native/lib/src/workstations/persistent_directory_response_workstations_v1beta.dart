// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk_response_workstations_v1beta.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryResponseWorkstationsV1beta {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDiskResponseWorkstationsV1beta gcePd;

  /// Optional. Location of this directory in the running workstation.
  final String mountPath;

  /// Creates a new [PersistentDirectoryResponseWorkstationsV1beta].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectoryResponseWorkstationsV1beta({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcePd': gcePd.toMap(), 'mountPath': mountPath};
  }

  factory PersistentDirectoryResponseWorkstationsV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PersistentDirectoryResponseWorkstationsV1beta(
      gcePd: GceRegionalPersistentDiskResponseWorkstationsV1beta.fromMap(
        (map['gcePd'] as Map).cast<String, dynamic>(),
      ),
      mountPath: map['mountPath'] as String,
    );
  }
}
