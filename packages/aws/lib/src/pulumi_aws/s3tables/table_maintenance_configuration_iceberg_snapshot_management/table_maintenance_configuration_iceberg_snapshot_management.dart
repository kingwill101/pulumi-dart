// ignore_for_file: unused_element, unnecessary_cast

import '../table_maintenance_configuration_iceberg_snapshot_management_settings/table_maintenance_configuration_iceberg_snapshot_management_settings.dart';

class TableMaintenanceConfigurationIcebergSnapshotManagement {
  /// Settings object for snapshot management.
  /// See `iceberg_snapshot_management.settings` below.
  final TableMaintenanceConfigurationIcebergSnapshotManagementSettings settings;

  /// Whether the configuration is enabled.
  /// Valid values are <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> and <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String status;

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
