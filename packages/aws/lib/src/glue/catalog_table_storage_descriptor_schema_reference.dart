// ignore_for_file: unused_element, unnecessary_cast

import 'catalog_table_storage_descriptor_schema_reference_schema_id.dart';

class CatalogTableStorageDescriptorSchemaReference {
  /// Configuration block that contains schema identity fields. Either this or the `schema_version_id` has to be provided. See `schema_id` below.
  final CatalogTableStorageDescriptorSchemaReferenceSchemaId? schemaId;

  /// Unique ID assigned to a version of the schema. Either this or the `schema_id` has to be provided.
  final String? schemaVersionId;

  /// Version number of the schema.
  final int schemaVersionNumber;

  /// Creates a new [CatalogTableStorageDescriptorSchemaReference].
  /// [schemaId] Configuration block that contains schema identity fields. Either this or the `schema_version_id` has to be provided. See `schema_id` below.
  /// [schemaVersionId] Unique ID assigned to a version of the schema. Either this or the `schema_id` has to be provided.
  /// [schemaVersionNumber] Version number of the schema.
  CatalogTableStorageDescriptorSchemaReference({
    this.schemaId,
    this.schemaVersionId,
    required this.schemaVersionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final schemaIdValue = schemaId;
    if (schemaIdValue != null) {
      map['schemaId'] = schemaIdValue.toMap();
    }
    final schemaVersionIdValue = schemaVersionId;
    if (schemaVersionIdValue != null) {
      map['schemaVersionId'] = schemaVersionIdValue;
    }
    map['schemaVersionNumber'] = schemaVersionNumber;
    return map;
  }

  factory CatalogTableStorageDescriptorSchemaReference.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSchemaReference(
      schemaId: map['schemaId'] == null
          ? null
          : CatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(
              (map['schemaId'] as Map).cast<String, dynamic>()),
      schemaVersionId: map['schemaVersionId'] == null
          ? null
          : map['schemaVersionId'] as String,
      schemaVersionNumber: map['schemaVersionNumber'] as int,
    );
  }
}
