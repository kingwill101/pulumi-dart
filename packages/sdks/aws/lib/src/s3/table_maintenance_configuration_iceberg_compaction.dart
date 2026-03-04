// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_maintenance_configuration_iceberg_compaction_settings.dart';

class TableMaintenanceConfigurationIcebergCompaction {
  /// Settings object for compaction.
  /// See `iceberg_compaction.settings` below.
  final pulumi.Input<TableMaintenanceConfigurationIcebergCompactionSettings>
  settings;

  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final pulumi.Input<String> status;

  /// Creates a new [TableMaintenanceConfigurationIcebergCompaction].
  /// [settings] Settings object for compaction.
  /// [status] Whether the configuration is enabled.
  TableMaintenanceConfigurationIcebergCompaction({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings':
          pulumi.Input.mapInputValue<
            TableMaintenanceConfigurationIcebergCompactionSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
      'status': status,
    };
  }

  factory TableMaintenanceConfigurationIcebergCompaction.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableMaintenanceConfigurationIcebergCompaction(
      settings: pulumi.Input.fromValue(
        TableMaintenanceConfigurationIcebergCompactionSettings.fromMap(
          (map['settings']! as Map).cast<String, dynamic>(),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
