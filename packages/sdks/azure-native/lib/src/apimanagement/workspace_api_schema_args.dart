// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_api_schema_args_doc}
/// The set of arguments for WorkspaceApiSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_schema_args_doc}
class WorkspaceApiSchemaArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  final pulumi.Input<dynamic>? components;
  /// Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). </br> - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` </br> - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` </br> - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` </br> - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml`.
  final pulumi.Input<String> contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  final pulumi.Input<dynamic>? definitions;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  final pulumi.Input<String>? value;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiSchemaArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [components] Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  /// [contentType] Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). </br> - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` </br> - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` </br> - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` </br> - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml`.
  /// [definitions] Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  /// [value] Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiSchemaArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<dynamic>? components,
    required pulumi.Output<String> contentType,
    pulumi.Output<dynamic>? definitions,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? schemaId,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? value,
    required pulumi.Output<String> workspaceId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      components = pulumi.Input.asOptionalInput<dynamic>(components),
      contentType = pulumi.Input.asInput<String>(contentType),
      definitions = pulumi.Input.asOptionalInput<dynamic>(definitions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asOptionalInput<String>(schemaId),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asOptionalInput<String>(value),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'components': ?components,
      'contentType': contentType,
      'definitions': ?definitions,
      'resourceGroupName': resourceGroupName,
      'schemaId': ?schemaId,
      'serviceName': serviceName,
      'value': ?value,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiSchemaArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiSchemaArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<dynamic>(map['components']),
      contentType: pulumi.Output.create<String>(map['contentType'] as String),
      definitions: map['definitions'] == null ? null : pulumi.Output.create<dynamic>(map['definitions']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaId: map['schemaId'] == null ? null : pulumi.Output.create<String>(map['schemaId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

