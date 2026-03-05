// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_storage_descriptor_schema_reference_schema_id.dart';

class CatalogTableStorageDescriptorSchemaReference {
  /// Configuration block that contains schema identity fields. Either this or the `schema_version_id` has to be provided. See `schema_id` below.
  final pulumi.Input<CatalogTableStorageDescriptorSchemaReferenceSchemaId>? schemaId;
  /// Unique ID assigned to a version of the schema. Either this or the `schema_id` has to be provided.
  final pulumi.Input<String>? schemaVersionId;
  /// Version number of the schema.
  final pulumi.Input<int> schemaVersionNumber;

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
    return <String, dynamic>{
      'schemaId': ?pulumi.Input.mapOptionalInputValue<CatalogTableStorageDescriptorSchemaReferenceSchemaId, Map<String, dynamic>>(schemaId, (value) => value.toMap()),
      'schemaVersionId': ?schemaVersionId,
      'schemaVersionNumber': schemaVersionNumber,
    };
  }

  factory CatalogTableStorageDescriptorSchemaReference.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSchemaReference(
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaVersionId: (() { final guardedValue = map['schemaVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaVersionNumber: pulumi.Input.fromValue(map['schemaVersionNumber'] as int),
    );
  }
}

