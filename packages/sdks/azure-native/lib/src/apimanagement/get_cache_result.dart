// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCache.
class GetCacheResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Runtime connection string to cache
  final String? connectionString;
  /// Cache description
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Original uri of entity in external system cache points to
  final String? resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  final String? useFromLocation;

  /// Creates a new [GetCacheResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionString] Runtime connection string to cache
  /// [description] Cache description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [resourceId] Original uri of entity in external system cache points to
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useFromLocation] Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  const GetCacheResult({
    this.azureApiVersion,
    this.connectionString,
    this.description,
    this.id,
    this.name,
    this.resourceId,
    this.type,
    this.useFromLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionString': ?connectionString,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'resourceId': ?resourceId,
      'type': ?type,
      'useFromLocation': ?useFromLocation,
    };
  }

  factory GetCacheResult.fromMap(Map<String, dynamic> map) {
    return GetCacheResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useFromLocation: (() { final guardedValue = map['useFromLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
