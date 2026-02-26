// ignore_for_file: unused_element, unnecessary_cast

import '../table_maintenance_configuration_iceberg_compaction/table_maintenance_configuration_iceberg_compaction.dart';
import '../table_maintenance_configuration_iceberg_snapshot_management/table_maintenance_configuration_iceberg_snapshot_management.dart';

class TableMaintenanceConfiguration {
  /// A single Iceberg compaction settings object.
  /// See <span pulumi-lang-nodejs="`icebergCompaction`" pulumi-lang-dotnet="`IcebergCompaction`" pulumi-lang-go="`icebergCompaction`" pulumi-lang-python="`iceberg_compaction`" pulumi-lang-yaml="`icebergCompaction`" pulumi-lang-java="`icebergCompaction`">`iceberg_compaction`</span> below.
  final TableMaintenanceConfigurationIcebergCompaction icebergCompaction;

  /// A single Iceberg snapshot management settings object.
  /// See <span pulumi-lang-nodejs="`icebergSnapshotManagement`" pulumi-lang-dotnet="`IcebergSnapshotManagement`" pulumi-lang-go="`icebergSnapshotManagement`" pulumi-lang-python="`iceberg_snapshot_management`" pulumi-lang-yaml="`icebergSnapshotManagement`" pulumi-lang-java="`icebergSnapshotManagement`">`iceberg_snapshot_management`</span> below.
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
