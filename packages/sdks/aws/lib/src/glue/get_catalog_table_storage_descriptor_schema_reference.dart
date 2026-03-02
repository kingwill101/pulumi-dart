// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_table_storage_descriptor_schema_reference_schema_id.dart';

class GetCatalogTableStorageDescriptorSchemaReference {
  /// Configuration block that contains schema identity fields. See `schema_id` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorSchemaReferenceSchemaId>> schemaIds;
  /// Unique ID assigned to a version of the schema.
  final pulumi.Input<String> schemaVersionId;
  /// Version number of the schema.
  final pulumi.Input<int> schemaVersionNumber;

  /// Creates a new [GetCatalogTableStorageDescriptorSchemaReference].
  /// [schemaIds] Configuration block that contains schema identity fields. See `schema_id` below.
  /// [schemaVersionId] Unique ID assigned to a version of the schema.
  /// [schemaVersionNumber] Version number of the schema.
  GetCatalogTableStorageDescriptorSchemaReference({
    required this.schemaIds,
    required this.schemaVersionId,
    required this.schemaVersionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaIds': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorSchemaReferenceSchemaId>, List<Map<String, dynamic>>>(schemaIds, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorSchemaReferenceSchemaId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaVersionId': schemaVersionId,
      'schemaVersionNumber': schemaVersionNumber,
    };
  }

  factory GetCatalogTableStorageDescriptorSchemaReference.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSchemaReference(
      schemaIds: (pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSchemaReferenceSchemaId>(map['schemaIds']!, (value) => GetCatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaVersionId: (map['schemaVersionId'] as String).input(),
      schemaVersionNumber: (map['schemaVersionNumber'] as int).input(),
    );
  }
}

