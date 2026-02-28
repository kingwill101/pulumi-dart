// ignore_for_file: unused_element, unnecessary_cast

import 'table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal.dart';

class TableBucketMaintenanceConfiguration {
  /// A single Iceberg unreferenced file removal settings object.
  /// See `iceberg_unreferenced_file_removal` below.
  final TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval
      icebergUnreferencedFileRemoval;

  /// Creates a new [TableBucketMaintenanceConfiguration].
  /// [icebergUnreferencedFileRemoval] A single Iceberg unreferenced file removal settings object.
  TableBucketMaintenanceConfiguration({
    required this.icebergUnreferencedFileRemoval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['icebergUnreferencedFileRemoval'] =
        icebergUnreferencedFileRemoval.toMap();
    return map;
  }

  factory TableBucketMaintenanceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TableBucketMaintenanceConfiguration(
      icebergUnreferencedFileRemoval:
          TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval
              .fromMap((map['icebergUnreferencedFileRemoval'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
