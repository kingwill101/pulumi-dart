// ignore_for_file: unused_element, unnecessary_cast

import '../table_metadata_iceberg_schema/table_metadata_iceberg_schema.dart';

class TableMetadataIceberg {
  /// Schema configuration for the Iceberg table.
  /// See <span pulumi-lang-nodejs="`schema`" pulumi-lang-dotnet="`Schema`" pulumi-lang-go="`schema`" pulumi-lang-python="`schema`" pulumi-lang-yaml="`schema`" pulumi-lang-java="`schema`">`schema`</span> below.
  final TableMetadataIcebergSchema schema;

  TableMetadataIceberg({
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema.toMap();
    return map;
  }

  factory TableMetadataIceberg.fromMap(Map<String, dynamic> map) {
    return TableMetadataIceberg(
      schema: TableMetadataIcebergSchema.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
    );
  }
}
