// ignore_for_file: unused_element, unnecessary_cast

import '../table_metadata_iceberg/table_metadata_iceberg.dart';

class TableMetadata {
  /// Contains details about the metadata for an Iceberg table. This block defines the schema structure for the Apache Iceberg table format.
  /// See `iceberg` below.
  final TableMetadataIceberg iceberg;

  TableMetadata({
    required this.iceberg,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iceberg'] = iceberg.toMap();
    return map;
  }

  factory TableMetadata.fromMap(Map<String, dynamic> map) {
    return TableMetadata(
      iceberg: TableMetadataIceberg.fromMap(
          (map['iceberg'] as Map).cast<String, dynamic>()),
    );
  }
}
