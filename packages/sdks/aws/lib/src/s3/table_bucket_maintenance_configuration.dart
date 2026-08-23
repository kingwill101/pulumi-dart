// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_maintenance_configuration_iceberg_unreferenced_file_removal.dart';

class TableBucketMaintenanceConfiguration {
  /// Iceberg unreferenced file removal settings for the table bucket. See `icebergUnreferencedFileRemoval` below.
  final pulumi.Input<TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval> icebergUnreferencedFileRemoval;

  /// Creates a new [TableBucketMaintenanceConfiguration].
  /// [icebergUnreferencedFileRemoval] Iceberg unreferenced file removal settings for the table bucket. See `icebergUnreferencedFileRemoval` below.
  const TableBucketMaintenanceConfiguration({
    required this.icebergUnreferencedFileRemoval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergUnreferencedFileRemoval': pulumi.Input.mapInputValue<TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval, Map<String, dynamic>>(icebergUnreferencedFileRemoval, (value) => value.toMap()),
    };
  }

  factory TableBucketMaintenanceConfiguration.fromMap(Map<String, dynamic> map) {
    return TableBucketMaintenanceConfiguration(
      icebergUnreferencedFileRemoval: pulumi.Input.fromValue(TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemoval.fromMap((map['icebergUnreferencedFileRemoval']! as Map).cast<String, dynamic>())),
    );
  }
}
