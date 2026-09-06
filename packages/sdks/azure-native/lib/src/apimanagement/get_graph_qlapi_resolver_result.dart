// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGraphQLApiResolver.
class GetGraphQLApiResolverResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Description of the resolver. May include HTML formatting tags.
  final String? description;
  /// Resolver Name.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Path is type/field being resolved.
  final String? path;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGraphQLApiResolverResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the resolver. May include HTML formatting tags.
  /// [displayName] Resolver Name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [path] Path is type/field being resolved.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGraphQLApiResolverResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.name,
    this.path,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'type': ?type,
    };
  }

  factory GetGraphQLApiResolverResult.fromMap(Map<String, dynamic> map) {
    return GetGraphQLApiResolverResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
