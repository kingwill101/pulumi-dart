// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_catalog_table_storage_descriptor_schema_reference_schema_id/get_catalog_table_storage_descriptor_schema_reference_schema_id.dart';

class GetCatalogTableStorageDescriptorSchemaReference {
  /// Configuration block that contains schema identity fields. See <span pulumi-lang-nodejs="`schemaId`" pulumi-lang-dotnet="`SchemaId`" pulumi-lang-go="`schemaId`" pulumi-lang-python="`schema_id`" pulumi-lang-yaml="`schemaId`" pulumi-lang-java="`schemaId`">`schema_id`</span> below.
  final List<GetCatalogTableStorageDescriptorSchemaReferenceSchemaId> schemaIds;

  /// Unique ID assigned to a version of the schema.
  final String schemaVersionId;

  /// Version number of the schema.
  final int schemaVersionNumber;

  GetCatalogTableStorageDescriptorSchemaReference({
    required this.schemaIds,
    required this.schemaVersionId,
    required this.schemaVersionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemaIds'] = Input.encodeList<
        GetCatalogTableStorageDescriptorSchemaReferenceSchemaId,
        Map<String, dynamic>>(schemaIds, (value) => value.toMap());
    map['schemaVersionId'] = schemaVersionId;
    map['schemaVersionNumber'] = schemaVersionNumber;
    return map;
  }

  factory GetCatalogTableStorageDescriptorSchemaReference.fromMap(
      Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSchemaReference(
      schemaIds: Input.decodeList<
              GetCatalogTableStorageDescriptorSchemaReferenceSchemaId>(
          map['schemaIds'],
          (value) =>
              GetCatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schemaVersionId: map['schemaVersionId'] as String,
      schemaVersionNumber: map['schemaVersionNumber'] as int,
    );
  }
}
