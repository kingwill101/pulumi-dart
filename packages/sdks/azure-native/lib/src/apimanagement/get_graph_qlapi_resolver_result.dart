// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGraphQLApiResolver.
class GetGraphQLApiResolverResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the resolver. May include HTML formatting tags.
  final String? description;
  /// Resolver Name.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Path is type/field being resolved.
  final String? path;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGraphQLApiResolverResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the resolver. May include HTML formatting tags.
  /// [displayName] Resolver Name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [path] Path is type/field being resolved.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGraphQLApiResolverResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.name,
    this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'path': ?path,
      'type': type,
    };
  }

  factory GetGraphQLApiResolverResult.fromMap(Map<String, dynamic> map) {
    return GetGraphQLApiResolverResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
