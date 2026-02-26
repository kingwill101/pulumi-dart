// ignore_for_file: unused_element, unnecessary_cast

import '../workstation_config_ephemeral_directory_gce_pd/workstation_config_ephemeral_directory_gce_pd.dart';

class WorkstationConfigEphemeralDirectory {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// Structure is documented below.
  final WorkstationConfigEphemeralDirectoryGcePd? gcePd;

  /// Location of this directory in the running workstation.
  final String? mountPath;

  WorkstationConfigEphemeralDirectory({
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

  factory WorkstationConfigEphemeralDirectory.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigEphemeralDirectory(
      gcePd: map['gcePd'] == null
          ? null
          : WorkstationConfigEphemeralDirectoryGcePd.fromMap(
              (map['gcePd'] as Map).cast<String, dynamic>()),
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}
