// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema.
  final String registryName;

  /// ARN of the schema.
  final String schemaArn;

  /// Name of the schema.
  final String schemaName;

  /// Creates a new [GetCatalogTableStorageDescriptorSchemaReferenceSchemaId].
  /// [registryName] Name of the schema registry that contains the schema.
  /// [schemaArn] ARN of the schema.
  /// [schemaName] Name of the schema.
  GetCatalogTableStorageDescriptorSchemaReferenceSchemaId({
    required this.registryName,
    required this.schemaArn,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'schemaArn': schemaArn,
      'schemaName': schemaName,
    };
  }

  factory GetCatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCatalogTableStorageDescriptorSchemaReferenceSchemaId(
      registryName: map['registryName'] as String,
      schemaArn: map['schemaArn'] as String,
      schemaName: map['schemaName'] as String,
    );
  }
}
