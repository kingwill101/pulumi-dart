// ignore_for_file: unused_element, unnecessary_cast

class TableMaintenanceConfigurationIcebergSnapshotManagementSettings {
  /// Snapshots older than this will be marked for deletiion.
  /// Must be at least `1`.
  final int maxSnapshotAgeHours;

  /// Minimum number of snapshots to keep.
  /// Must be at least `1`.
  final int minSnapshotsToKeep;

  /// Creates a new [TableMaintenanceConfigurationIcebergSnapshotManagementSettings].
  /// [maxSnapshotAgeHours] Snapshots older than this will be marked for deletiion.
  /// [minSnapshotsToKeep] Minimum number of snapshots to keep.
  TableMaintenanceConfigurationIcebergSnapshotManagementSettings({
    required this.maxSnapshotAgeHours,
    required this.minSnapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSnapshotAgeHours': maxSnapshotAgeHours,
      'minSnapshotsToKeep': minSnapshotsToKeep,
    };
  }

  factory TableMaintenanceConfigurationIcebergSnapshotManagementSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableMaintenanceConfigurationIcebergSnapshotManagementSettings(
      maxSnapshotAgeHours: map['maxSnapshotAgeHours'] as int,
      minSnapshotsToKeep: map['minSnapshotsToKeep'] as int,
    );
  }
}
