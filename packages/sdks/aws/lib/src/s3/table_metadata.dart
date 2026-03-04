// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_metadata_iceberg.dart';

class TableMetadata {
  /// Contains details about the metadata for an Iceberg table. This block defines the schema structure for the Apache Iceberg table format.
  /// See `iceberg` below.
  final pulumi.Input<TableMetadataIceberg> iceberg;

  /// Creates a new [TableMetadata].
  /// [iceberg] Contains details about the metadata for an Iceberg table. This block defines the schema structure for the Apache Iceberg table format.
  TableMetadata({required this.iceberg});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iceberg':
          pulumi.Input.mapInputValue<
            TableMetadataIceberg,
            Map<String, dynamic>
          >(iceberg, (value) => value.toMap()),
    };
  }

  factory TableMetadata.fromMap(Map<String, dynamic> map) {
    return TableMetadata(
      iceberg: pulumi.Input.fromValue(
        TableMetadataIceberg.fromMap(
          (map['iceberg']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
