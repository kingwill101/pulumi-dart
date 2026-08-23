// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema.
  final pulumi.Input<String> registryName;
  /// ARN of the schema.
  final pulumi.Input<String> schemaArn;
  /// Name of the schema.
  final pulumi.Input<String> schemaName;

  /// Creates a new [GetCatalogTableStorageDescriptorSchemaReferenceSchemaId].
  /// [registryName] Name of the schema registry that contains the schema.
  /// [schemaArn] ARN of the schema.
  /// [schemaName] Name of the schema.
  const GetCatalogTableStorageDescriptorSchemaReferenceSchemaId({
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

  factory GetCatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSchemaReferenceSchemaId(
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      schemaArn: pulumi.Input.fromValue(map['schemaArn'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}
