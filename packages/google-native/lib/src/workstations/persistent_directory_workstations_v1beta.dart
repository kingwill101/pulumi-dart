// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk_workstations_v1beta.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryWorkstationsV1beta {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDiskWorkstationsV1beta? gcePd;
  /// Optional. Location of this directory in the running workstation.
  final String? mountPath;

  /// Creates a new [PersistentDirectoryWorkstationsV1beta].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectoryWorkstationsV1beta({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': ?gcePd == null ? null : gcePd!.toMap(),
      'mountPath': ?mountPath,
    };
  }

  factory PersistentDirectoryWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryWorkstationsV1beta(
      gcePd: map['gcePd'] == null ? null : GceRegionalPersistentDiskWorkstationsV1beta.fromMap((map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}

