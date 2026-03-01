// ignore_for_file: unused_element, unnecessary_cast

import 'table_maintenance_configuration_iceberg_compaction_settings.dart';

class TableMaintenanceConfigurationIcebergCompaction {
  /// Settings object for compaction.
  /// See `iceberg_compaction.settings` below.
  final TableMaintenanceConfigurationIcebergCompactionSettings settings;
  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final String status;

  /// Creates a new [TableMaintenanceConfigurationIcebergCompaction].
  /// [settings] Settings object for compaction.
  /// [status] Whether the configuration is enabled.
  TableMaintenanceConfigurationIcebergCompaction({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': settings.toMap(),
      'status': status,
    };
  }

  factory TableMaintenanceConfigurationIcebergCompaction.fromMap(Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergCompaction(
      settings: TableMaintenanceConfigurationIcebergCompactionSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

