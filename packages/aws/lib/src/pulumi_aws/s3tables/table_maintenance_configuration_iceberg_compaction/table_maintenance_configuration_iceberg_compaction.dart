// ignore_for_file: unused_element, unnecessary_cast

import '../table_maintenance_configuration_iceberg_compaction_settings/table_maintenance_configuration_iceberg_compaction_settings.dart';

class TableMaintenanceConfigurationIcebergCompaction {
  /// Settings object for compaction.
  /// See `iceberg_compaction.settings` below.
  final TableMaintenanceConfigurationIcebergCompactionSettings settings;

  /// Whether the configuration is enabled.
  /// Valid values are <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> and <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String status;

  TableMaintenanceConfigurationIcebergCompaction({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['settings'] = settings.toMap();
    map['status'] = status;
    return map;
  }

  factory TableMaintenanceConfigurationIcebergCompaction.fromMap(
      Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergCompaction(
      settings: TableMaintenanceConfigurationIcebergCompactionSettings.fromMap(
          (map['settings'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}
