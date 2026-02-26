// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema.
  final String registryName;

  /// ARN of the schema.
  final String schemaArn;

  /// Name of the schema.
  final String schemaName;

  GetCatalogTableStorageDescriptorSchemaReferenceSchemaId({
    required this.registryName,
    required this.schemaArn,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['registryName'] = registryName;
    map['schemaArn'] = schemaArn;
    map['schemaName'] = schemaName;
    return map;
  }

  factory GetCatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(
      Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSchemaReferenceSchemaId(
      registryName: map['registryName'] as String,
      schemaArn: map['schemaArn'] as String,
      schemaName: map['schemaName'] as String,
    );
  }
}
