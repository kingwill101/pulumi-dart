// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_table_storage_descriptor_schema_reference_schema_id/catalog_table_storage_descriptor_schema_reference_schema_id.dart';

class CatalogTableStorageDescriptorSchemaReference {
  /// Configuration block that contains schema identity fields. Either this or the <span pulumi-lang-nodejs="`schemaVersionId`" pulumi-lang-dotnet="`SchemaVersionId`" pulumi-lang-go="`schemaVersionId`" pulumi-lang-python="`schema_version_id`" pulumi-lang-yaml="`schemaVersionId`" pulumi-lang-java="`schemaVersionId`">`schema_version_id`</span> has to be provided. See <span pulumi-lang-nodejs="`schemaId`" pulumi-lang-dotnet="`SchemaId`" pulumi-lang-go="`schemaId`" pulumi-lang-python="`schema_id`" pulumi-lang-yaml="`schemaId`" pulumi-lang-java="`schemaId`">`schema_id`</span> below.
  final CatalogTableStorageDescriptorSchemaReferenceSchemaId? schemaId;

  /// Unique ID assigned to a version of the schema. Either this or the <span pulumi-lang-nodejs="`schemaId`" pulumi-lang-dotnet="`SchemaId`" pulumi-lang-go="`schemaId`" pulumi-lang-python="`schema_id`" pulumi-lang-yaml="`schemaId`" pulumi-lang-java="`schemaId`">`schema_id`</span> has to be provided.
  final String? schemaVersionId;

  /// Version number of the schema.
  final int schemaVersionNumber;

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
