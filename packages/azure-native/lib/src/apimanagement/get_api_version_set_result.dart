// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiVersionSet.
class GetApiVersionSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of API Version Set.
  final String? description;
  /// Name of API Version Set
  final String displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  final String? versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  final String? versionQueryName;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  final String versioningScheme;

  /// Creates a new [GetApiVersionSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of API Version Set.
  /// [displayName] Name of API Version Set
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [versionHeaderName] Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  /// [versionQueryName] Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  /// [versioningScheme] An value that determines where the API Version identifier will be located in a HTTP request.
  GetApiVersionSetResult({
    required this.azureApiVersion,
    this.description,
    required this.displayName,
    required this.id,
    required this.name,
    required this.type,
    this.versionHeaderName,
    this.versionQueryName,
    required this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'name': name,
      'type': type,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': versioningScheme,
    };
  }

  factory GetApiVersionSetResult.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      versionHeaderName: map['versionHeaderName'] == null ? null : map['versionHeaderName'] as String,
      versionQueryName: map['versionQueryName'] == null ? null : map['versionQueryName'] as String,
      versioningScheme: map['versioningScheme'] as String,
    );
  }
}

