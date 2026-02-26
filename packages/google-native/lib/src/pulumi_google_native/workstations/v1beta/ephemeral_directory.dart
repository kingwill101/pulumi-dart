// ignore_for_file: unused_element, unnecessary_cast

import 'gce_persistent_disk.dart';

/// An ephemeral directory which won't persist across workstation sessions. It is freshly created on every workstation start operation.
class EphemeralDirectory {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  final GcePersistentDisk? gcePd;

  /// Location of this directory in the running workstation.
  final String mountPath;

  EphemeralDirectory({
    this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcePdValue = gcePd;
    if (gcePdValue != null) {
      map['gcePd'] = gcePdValue.toMap();
    }
    map['mountPath'] = mountPath;
    return map;
  }

  factory EphemeralDirectory.fromMap(Map<String, dynamic> map) {
    return EphemeralDirectory(
      gcePd: map['gcePd'] == null
          ? null
          : GcePersistentDisk.fromMap(
              (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] as String,
    );
  }
}
