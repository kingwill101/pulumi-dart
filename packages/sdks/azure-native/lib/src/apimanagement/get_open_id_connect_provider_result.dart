// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOpenIdConnectProvider.
class GetOpenIdConnectProviderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Client ID of developer console which is the client application.
  final String clientId;
  /// Client Secret of developer console which is the client application.
  final String? clientSecret;
  /// User-friendly description of OpenID Connect Provider.
  final String? description;
  /// User-friendly OpenID Connect Provider name.
  final String displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Metadata endpoint URI.
  final String metadataEndpoint;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  final bool? useInApiDocumentation;
  /// If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  final bool? useInTestConsole;

  /// Creates a new [GetOpenIdConnectProviderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientId] Client ID of developer console which is the client application.
  /// [clientSecret] Client Secret of developer console which is the client application.
  /// [description] User-friendly description of OpenID Connect Provider.
  /// [displayName] User-friendly OpenID Connect Provider name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [metadataEndpoint] Metadata endpoint URI.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useInApiDocumentation] If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  /// [useInTestConsole] If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  const GetOpenIdConnectProviderResult({
    required this.azureApiVersion,
    required this.clientId,
    this.clientSecret,
    this.description,
    required this.displayName,
    required this.id,
    required this.metadataEndpoint,
    required this.name,
    required this.type,
    this.useInApiDocumentation,
    this.useInTestConsole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'metadataEndpoint': metadataEndpoint,
      'name': name,
      'type': type,
      'useInApiDocumentation': ?useInApiDocumentation,
      'useInTestConsole': ?useInTestConsole,
    };
  }

  factory GetOpenIdConnectProviderResult.fromMap(Map<String, dynamic> map) {
    return GetOpenIdConnectProviderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientId: map['clientId'] as String,
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      metadataEndpoint: map['metadataEndpoint'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      useInApiDocumentation: (() { final guardedValue = map['useInApiDocumentation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      useInTestConsole: (() { final guardedValue = map['useInTestConsole']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
