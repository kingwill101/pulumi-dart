// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema. Must be provided when `schema_name` is specified and conflicts with `schema_arn`.
  final String? registryName;

  /// ARN of the schema. One of `schema_arn` or `schema_name` has to be provided.
  final String? schemaArn;

  /// Name of the schema. One of `schema_arn` or `schema_name` has to be provided.
  final String? schemaName;

  CatalogTableStorageDescriptorSchemaReferenceSchemaId({
    this.registryName,
    this.schemaArn,
    this.schemaName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final registryNameValue = registryName;
    if (registryNameValue != null) {
      map['registryName'] = registryNameValue;
    }
    final schemaArnValue = schemaArn;
    if (schemaArnValue != null) {
      map['schemaArn'] = schemaArnValue;
    }
    final schemaNameValue = schemaName;
    if (schemaNameValue != null) {
      map['schemaName'] = schemaNameValue;
    }
    return map;
  }

  factory CatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSchemaReferenceSchemaId(
      registryName:
          map['registryName'] == null ? null : map['registryName'] as String,
      schemaArn: map['schemaArn'] == null ? null : map['schemaArn'] as String,
      schemaName:
          map['schemaName'] == null ? null : map['schemaName'] as String,
    );
  }
}
