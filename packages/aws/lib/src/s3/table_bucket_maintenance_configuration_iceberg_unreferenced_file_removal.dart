// ignore_for_file: unused_element, unnecessary_cast

import 'table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal_settings.dart';

class TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval {
  /// Settings object for unreferenced file removal.
  /// See `iceberg_unreferenced_file_removal.settings` below.
  final TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings settings;
  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final String status;

  /// Creates a new [TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval].
  /// [settings] Settings object for unreferenced file removal.
  /// [status] Whether the configuration is enabled.
  TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': settings.toMap(),
      'status': status,
    };
  }

  factory TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval.fromMap(Map<String, dynamic> map) {
    return TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval(
      settings: TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

