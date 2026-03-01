// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCache.
class GetCacheResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Runtime connection string to cache
  final String connectionString;
  /// Cache description
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Original uri of entity in external system cache points to
  final String? resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  final String useFromLocation;

  /// Creates a new [GetCacheResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionString] Runtime connection string to cache
  /// [description] Cache description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [resourceId] Original uri of entity in external system cache points to
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useFromLocation] Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  GetCacheResult({
    required this.azureApiVersion,
    required this.connectionString,
    this.description,
    required this.id,
    required this.name,
    this.resourceId,
    required this.type,
    required this.useFromLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionString': connectionString,
      'description': ?description,
      'id': id,
      'name': name,
      'resourceId': ?resourceId,
      'type': type,
      'useFromLocation': useFromLocation,
    };
  }

  factory GetCacheResult.fromMap(Map<String, dynamic> map) {
    return GetCacheResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionString: map['connectionString'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      type: map['type'] as String,
      useFromLocation: map['useFromLocation'] as String,
    );
  }
}

