// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableStorageDescriptorSchemaReferenceSchemaId {
  /// Name of the schema registry that contains the schema. Must be provided when `schema_name` is specified and conflicts with `schema_arn`.
  final pulumi.Input<String>? registryName;
  /// ARN of the schema. One of `schema_arn` or `schema_name` has to be provided.
  final pulumi.Input<String>? schemaArn;
  /// Name of the schema. One of `schema_arn` or `schema_name` has to be provided.
  final pulumi.Input<String>? schemaName;

  /// Creates a new [CatalogTableStorageDescriptorSchemaReferenceSchemaId].
  /// [registryName] Name of the schema registry that contains the schema. Must be provided when `schema_name` is specified and conflicts with `schema_arn`.
  /// [schemaArn] ARN of the schema. One of `schema_arn` or `schema_name` has to be provided.
  /// [schemaName] Name of the schema. One of `schema_arn` or `schema_name` has to be provided.
  CatalogTableStorageDescriptorSchemaReferenceSchemaId({
    this.registryName,
    this.schemaArn,
    this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': ?registryName,
      'schemaArn': ?schemaArn,
      'schemaName': ?schemaName,
    };
  }

  factory CatalogTableStorageDescriptorSchemaReferenceSchemaId.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSchemaReferenceSchemaId(
      registryName: map['registryName'] == null ? null : ((map['registryName'] as String).input()).input(),
      schemaArn: map['schemaArn'] == null ? null : ((map['schemaArn'] as String).input()).input(),
      schemaName: map['schemaName'] == null ? null : ((map['schemaName'] as String).input()).input(),
    );
  }
}

