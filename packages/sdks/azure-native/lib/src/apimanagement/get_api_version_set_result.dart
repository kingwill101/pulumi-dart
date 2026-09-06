// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiVersionSet.
class GetApiVersionSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Description of API Version Set.
  final String? description;
  /// Name of API Version Set
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  final String? versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  final String? versionQueryName;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  final String? versioningScheme;

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
  const GetApiVersionSetResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.name,
    this.type,
    this.versionHeaderName,
    this.versionQueryName,
    this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': ?versioningScheme,
    };
  }

  factory GetApiVersionSetResult.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionHeaderName: (() { final guardedValue = map['versionHeaderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionQueryName: (() { final guardedValue = map['versionQueryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versioningScheme: (() { final guardedValue = map['versioningScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
