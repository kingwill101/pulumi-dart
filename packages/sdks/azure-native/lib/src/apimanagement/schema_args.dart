// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_schema_args_doc}
class SchemaArgs {
  /// Free-form schema entity description.
  final pulumi.Input<String>? description;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? schemaId;
  /// Schema Type. Immutable.
  final pulumi.Input<String> schemaType;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Json-encoded string for non json-based schema.
  final pulumi.Input<String>? value;

  /// Creates a new [SchemaArgs].
  /// [description] Free-form schema entity description.
  /// [resourceGroupName] The name of the resource group.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [schemaType] Schema Type. Immutable.
  /// [serviceName] The name of the API Management service.
  /// [value] Json-encoded string for non json-based schema.
  SchemaArgs({
    this.description,
    required this.resourceGroupName,
    this.schemaId,
    required this.schemaType,
    required this.serviceName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'schemaId': ?schemaId,
      'schemaType': schemaType,
      'serviceName': serviceName,
      'value': ?value,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaId: map['schemaId'] == null ? null : (map['schemaId']! as String).input(),
      schemaType: (map['schemaType'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

