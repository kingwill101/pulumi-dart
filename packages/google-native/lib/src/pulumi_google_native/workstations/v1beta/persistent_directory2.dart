// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk2.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectory2 {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final GceRegionalPersistentDisk2? gcePd;

  /// Optional. Location of this directory in the running workstation.
  final String? mountPath;

  PersistentDirectory2({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcePdValue = gcePd;
    if (gcePdValue != null) {
      map['gcePd'] = gcePdValue.toMap();
    }
    final mountPathValue = mountPath;
    if (mountPathValue != null) {
      map['mountPath'] = mountPathValue;
    }
    return map;
  }

  factory PersistentDirectory2.fromMap(Map<String, dynamic> map) {
    return PersistentDirectory2(
      gcePd: map['gcePd'] == null
          ? null
          : GceRegionalPersistentDisk2.fromMap(
              (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}
