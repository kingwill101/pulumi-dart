// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_maintenance_configuration_iceberg_snapshot_management_settings.dart';

class TableMaintenanceConfigurationIcebergSnapshotManagement {
  /// Settings object for snapshot management.
  /// See `iceberg_snapshot_management.settings` below.
  final pulumi.Input<
    TableMaintenanceConfigurationIcebergSnapshotManagementSettings
  >
  settings;

  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final pulumi.Input<String> status;

  /// Creates a new [TableMaintenanceConfigurationIcebergSnapshotManagement].
  /// [settings] Settings object for snapshot management.
  /// [status] Whether the configuration is enabled.
  TableMaintenanceConfigurationIcebergSnapshotManagement({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings':
          pulumi.Input.mapInputValue<
            TableMaintenanceConfigurationIcebergSnapshotManagementSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
      'status': status,
    };
  }

  factory TableMaintenanceConfigurationIcebergSnapshotManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableMaintenanceConfigurationIcebergSnapshotManagement(
      settings: pulumi.Input.fromValue(
        TableMaintenanceConfigurationIcebergSnapshotManagementSettings.fromMap(
          (map['settings']! as Map).cast<String, dynamic>(),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
