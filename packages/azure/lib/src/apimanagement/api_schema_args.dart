// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_schema_api_schema_args_doc}
/// The set of arguments for ApiSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_schema_api_schema_args_doc}
class ApiSchemaArgs {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiName;
  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
  final pulumi.Input<String>? components;
  /// The content type of the API Schema.
  final pulumi.Input<String> contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
  final pulumi.Input<String>? definitions;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A unique identifier for this API Schema. Changing this forces a new resource to be created.
  final pulumi.Input<String> schemaId;
  /// The JSON escaped string defining the document representing the Schema.
  final pulumi.Input<String>? value;

  /// Creates a new [ApiSchemaArgs].
  /// [apiManagementName] The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  /// [apiName] The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
  /// [components] Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
  /// [contentType] The content type of the API Schema.
  /// [definitions] Types definitions. Used for Swagger/OpenAPI v1 schemas only.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [schemaId] A unique identifier for this API Schema. Changing this forces a new resource to be created.
  /// [value] The JSON escaped string defining the document representing the Schema.
  ApiSchemaArgs({
    required String apiManagementName,
    required String apiName,
    String? components,
    required String contentType,
    String? definitions,
    required String resourceGroupName,
    required String schemaId,
    String? value,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiName = pulumi.Input.asInput<String>(apiName),
      components = pulumi.Input.asOptionalInput<String>(components),
      contentType = pulumi.Input.asInput<String>(contentType),
      definitions = pulumi.Input.asOptionalInput<String>(definitions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asInput<String>(schemaId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'components': ?components,
      'contentType': contentType,
      'definitions': ?definitions,
      'resourceGroupName': resourceGroupName,
      'schemaId': schemaId,
      'value': ?value,
    };
  }

  factory ApiSchemaArgs.fromMap(Map<String, dynamic> map) {
    return ApiSchemaArgs(
      apiManagementName: map['apiManagementName'] as String,
      apiName: map['apiName'] as String,
      components: map['components'] == null ? null : map['components'] as String,
      contentType: map['contentType'] as String,
      definitions: map['definitions'] == null ? null : map['definitions'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaId: map['schemaId'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

