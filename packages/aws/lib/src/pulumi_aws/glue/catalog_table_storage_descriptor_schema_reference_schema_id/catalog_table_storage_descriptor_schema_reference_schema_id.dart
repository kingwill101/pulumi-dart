// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema. Must be provided when <span pulumi-lang-nodejs="`schemaName`" pulumi-lang-dotnet="`SchemaName`" pulumi-lang-go="`schemaName`" pulumi-lang-python="`schema_name`" pulumi-lang-yaml="`schemaName`" pulumi-lang-java="`schemaName`">`schema_name`</span> is specified and conflicts with <span pulumi-lang-nodejs="`schemaArn`" pulumi-lang-dotnet="`SchemaArn`" pulumi-lang-go="`schemaArn`" pulumi-lang-python="`schema_arn`" pulumi-lang-yaml="`schemaArn`" pulumi-lang-java="`schemaArn`">`schema_arn`</span>.
  final String? registryName;

  /// ARN of the schema. One of <span pulumi-lang-nodejs="`schemaArn`" pulumi-lang-dotnet="`SchemaArn`" pulumi-lang-go="`schemaArn`" pulumi-lang-python="`schema_arn`" pulumi-lang-yaml="`schemaArn`" pulumi-lang-java="`schemaArn`">`schema_arn`</span> or <span pulumi-lang-nodejs="`schemaName`" pulumi-lang-dotnet="`SchemaName`" pulumi-lang-go="`schemaName`" pulumi-lang-python="`schema_name`" pulumi-lang-yaml="`schemaName`" pulumi-lang-java="`schemaName`">`schema_name`</span> has to be provided.
  final String? schemaArn;

  /// Name of the schema. One of <span pulumi-lang-nodejs="`schemaArn`" pulumi-lang-dotnet="`SchemaArn`" pulumi-lang-go="`schemaArn`" pulumi-lang-python="`schema_arn`" pulumi-lang-yaml="`schemaArn`" pulumi-lang-java="`schemaArn`">`schema_arn`</span> or <span pulumi-lang-nodejs="`schemaName`" pulumi-lang-dotnet="`SchemaName`" pulumi-lang-go="`schemaName`" pulumi-lang-python="`schema_name`" pulumi-lang-yaml="`schemaName`" pulumi-lang-java="`schemaName`">`schema_name`</span> has to be provided.
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
