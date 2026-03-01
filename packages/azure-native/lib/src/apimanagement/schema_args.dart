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
    String? description,
    required String resourceGroupName,
    String? schemaId,
    required String schemaType,
    required String serviceName,
    String? value,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asOptionalInput<String>(schemaId),
      schemaType = pulumi.Input.asInput<String>(schemaType),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      description: map['description'] == null ? null : map['description'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      schemaType: map['schemaType'] as String,
      serviceName: map['serviceName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

