// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_maintenance_configuration_iceberg_compaction.dart';
import 'table_maintenance_configuration_iceberg_snapshot_management.dart';

class TableMaintenanceConfiguration {
  /// Single Iceberg compaction settings object. See `icebergCompaction` below.
  final pulumi.Input<TableMaintenanceConfigurationIcebergCompaction> icebergCompaction;
  /// Single Iceberg snapshot management settings object. See `icebergSnapshotManagement` below.
  final pulumi.Input<TableMaintenanceConfigurationIcebergSnapshotManagement> icebergSnapshotManagement;

  /// Creates a new [TableMaintenanceConfiguration].
  /// [icebergCompaction] Single Iceberg compaction settings object. See `icebergCompaction` below.
  /// [icebergSnapshotManagement] Single Iceberg snapshot management settings object. See `icebergSnapshotManagement` below.
  const TableMaintenanceConfiguration({
    required this.icebergCompaction,
    required this.icebergSnapshotManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergCompaction': pulumi.Input.mapInputValue<TableMaintenanceConfigurationIcebergCompaction, Map<String, dynamic>>(icebergCompaction, (value) => value.toMap()),
      'icebergSnapshotManagement': pulumi.Input.mapInputValue<TableMaintenanceConfigurationIcebergSnapshotManagement, Map<String, dynamic>>(icebergSnapshotManagement, (value) => value.toMap()),
    };
  }

  factory TableMaintenanceConfiguration.fromMap(Map<String, dynamic> map) {
    return TableMaintenanceConfiguration(
      icebergCompaction: pulumi.Input.fromValue(TableMaintenanceConfigurationIcebergCompaction.fromMap((map['icebergCompaction']! as Map).cast<String, dynamic>())),
      icebergSnapshotManagement: pulumi.Input.fromValue(TableMaintenanceConfigurationIcebergSnapshotManagement.fromMap((map['icebergSnapshotManagement']! as Map).cast<String, dynamic>())),
    );
  }
}
