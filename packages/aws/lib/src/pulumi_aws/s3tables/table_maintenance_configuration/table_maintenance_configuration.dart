// ignore_for_file: unused_element, unnecessary_cast

import '../table_maintenance_configuration_iceberg_compaction/table_maintenance_configuration_iceberg_compaction.dart';
import '../table_maintenance_configuration_iceberg_snapshot_management/table_maintenance_configuration_iceberg_snapshot_management.dart';

class TableMaintenanceConfiguration {
  /// A single Iceberg compaction settings object.
  /// See `iceberg_compaction` below.
  final TableMaintenanceConfigurationIcebergCompaction icebergCompaction;

  /// A single Iceberg snapshot management settings object.
  /// See `iceberg_snapshot_management` below.
  final TableMaintenanceConfigurationIcebergSnapshotManagement
      icebergSnapshotManagement;

  TableMaintenanceConfiguration({
    required this.icebergCompaction,
    required this.icebergSnapshotManagement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['icebergCompaction'] = icebergCompaction.toMap();
    map['icebergSnapshotManagement'] = icebergSnapshotManagement.toMap();
    return map;
  }

  factory TableMaintenanceConfiguration.fromMap(Map<String, dynamic> map) {
    return TableMaintenanceConfiguration(
      icebergCompaction: TableMaintenanceConfigurationIcebergCompaction.fromMap(
          (map['icebergCompaction'] as Map).cast<String, dynamic>()),
      icebergSnapshotManagement:
          TableMaintenanceConfigurationIcebergSnapshotManagement.fromMap(
              (map['icebergSnapshotManagement'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
