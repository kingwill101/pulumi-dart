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
  /// Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). &lt;/br&gt; - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` &lt;/br&gt; - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` &lt;/br&gt; - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` &lt;/br&gt; - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml` &lt;/br&gt; - `OData Schema` use `application/vnd.ms-azure-apim.odata.schema` &lt;/br&gt; - `gRPC Schema` use `text/protobuf`.
  final pulumi.Input<String> contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  final pulumi.Input<dynamic>? definitions;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String?>? schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  final pulumi.Input<String?>? value;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiSchemaArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [components] Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  /// [contentType] Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). &lt;/br&gt; - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` &lt;/br&gt; - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` &lt;/br&gt; - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` &lt;/br&gt; - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml` &lt;/br&gt; - `OData Schema` use `application/vnd.ms-azure-apim.odata.schema` &lt;/br&gt; - `gRPC Schema` use `text/protobuf`.
  /// [definitions] Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  /// [value] Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const WorkspaceApiSchemaArgs({
    required this.apiId,
    this.components,
    required this.contentType,
    this.definitions,
    required this.resourceGroupName,
    this.schemaId,
    required this.serviceName,
    this.value,
    required this.workspaceId,
  });

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
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      definitions: (() { final guardedValue = map['definitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
