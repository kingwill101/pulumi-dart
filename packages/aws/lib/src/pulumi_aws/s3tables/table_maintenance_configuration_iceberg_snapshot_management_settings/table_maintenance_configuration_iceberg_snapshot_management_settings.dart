// ignore_for_file: unused_element, unnecessary_cast

class TableMaintenanceConfigurationIcebergSnapshotManagementSettings {
  /// Snapshots older than this will be marked for deletiion.
  /// Must be at least `1`.
  final int maxSnapshotAgeHours;

  /// Minimum number of snapshots to keep.
  /// Must be at least `1`.
  final int minSnapshotsToKeep;

  TableMaintenanceConfigurationIcebergSnapshotManagementSettings({
    required this.maxSnapshotAgeHours,
    required this.minSnapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxSnapshotAgeHours'] = maxSnapshotAgeHours;
    map['minSnapshotsToKeep'] = minSnapshotsToKeep;
    return map;
  }

  factory TableMaintenanceConfigurationIcebergSnapshotManagementSettings.fromMap(
      Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergSnapshotManagementSettings(
      maxSnapshotAgeHours: map['maxSnapshotAgeHours'] as int,
      minSnapshotsToKeep: map['minSnapshotsToKeep'] as int,
    );
  }
}
