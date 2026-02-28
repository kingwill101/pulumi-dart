// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectory {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDisk? gcePd;
  /// Optional. Location of this directory in the running workstation.
  final String? mountPath;

  /// Creates a new [PersistentDirectory].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectory({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': ?gcePd == null ? null : gcePd!.toMap(),
      'mountPath': ?mountPath,
    };
  }

  factory PersistentDirectory.fromMap(Map<String, dynamic> map) {
    return PersistentDirectory(
      gcePd: map['gcePd'] == null ? null : GceRegionalPersistentDisk.fromMap((map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}

