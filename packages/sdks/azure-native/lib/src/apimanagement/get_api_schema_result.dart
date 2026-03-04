// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApiSchema.
class GetApiSchemaResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  final dynamic components;

  /// Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). &lt;/br&gt; - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` &lt;/br&gt; - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` &lt;/br&gt; - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` &lt;/br&gt; - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml`.
  final String contentType;

  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  final dynamic definitions;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  final String? value;

  /// Creates a new [GetApiSchemaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [components] Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  /// [contentType] Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). &lt;/br&gt; - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` &lt;/br&gt; - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` &lt;/br&gt; - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` &lt;/br&gt; - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml`.
  /// [definitions] Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  GetApiSchemaResult({
    required this.azureApiVersion,
    this.components,
    required this.contentType,
    this.definitions,
    required this.id,
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'components': ?components,
      'contentType': contentType,
      'definitions': ?definitions,
      'id': id,
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory GetApiSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetApiSchemaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      components: (() {
        final guardedValue = map['components'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      contentType: map['contentType'] as String,
      definitions: (() {
        final guardedValue = map['definitions'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
