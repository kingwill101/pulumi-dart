// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal_settings.dart';

class TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval {
  /// Settings object for unreferenced file removal.
  /// See `iceberg_unreferenced_file_removal.settings` below.
  final pulumi.Input<TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings> settings;
  /// Whether the configuration is enabled.
  /// Valid values are `enabled` and `disabled`.
  final pulumi.Input<String> status;

  /// Creates a new [TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval].
  /// [settings] Settings object for unreferenced file removal.
  /// [status] Whether the configuration is enabled.
  TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval({
    required this.settings,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': pulumi.Input.mapInputValue<TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'status': status,
    };
  }

  factory TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval.fromMap(Map<String, dynamic> map) {
    return TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval(
      settings: pulumi.Input.fromValue(TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

