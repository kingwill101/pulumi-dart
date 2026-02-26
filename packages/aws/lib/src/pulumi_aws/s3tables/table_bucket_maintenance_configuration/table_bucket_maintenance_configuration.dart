// ignore_for_file: unused_element, unnecessary_cast

import '../table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal/table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal.dart';

class TableBucketMaintenanceConfiguration {
  /// A single Iceberg unreferenced file removal settings object.
  /// See <span pulumi-lang-nodejs="`icebergUnreferencedFileRemoval`" pulumi-lang-dotnet="`IcebergUnreferencedFileRemoval`" pulumi-lang-go="`icebergUnreferencedFileRemoval`" pulumi-lang-python="`iceberg_unreferenced_file_removal`" pulumi-lang-yaml="`icebergUnreferencedFileRemoval`" pulumi-lang-java="`icebergUnreferencedFileRemoval`">`iceberg_unreferenced_file_removal`</span> below.
  final TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval
      icebergUnreferencedFileRemoval;

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
