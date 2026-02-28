// ignore_for_file: unused_element, unnecessary_cast

import 'table_maintenance_configuration_iceberg_snapshot_management_settings.dart';

class TableMaintenanceConfigurationIcebergSnapshotManagement {
  /// Settings object for snapshot management.
  /// See `iceberg_snapshot_management.settings` below.
  final TableMaintenanceConfigurationIcebergSnapshotManagementSettings settings;

  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final String status;

  /// Creates a new [TableMaintenanceConfigurationIcebergSnapshotManagement].
  /// [settings] Settings object for snapshot management.
  /// [status] Whether the configuration is enabled.
  TableMaintenanceConfigurationIcebergSnapshotManagement({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['settings'] = settings.toMap();
    map['status'] = status;
    return map;
  }

  factory TableMaintenanceConfigurationIcebergSnapshotManagement.fromMap(
      Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergSnapshotManagement(
      settings: TableMaintenanceConfigurationIcebergSnapshotManagementSettings
          .fromMap((map['settings'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}
