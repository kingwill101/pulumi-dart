// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContentType.
class GetContentTypeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Content type description.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Content type schema.
  final dynamic schema;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Content type version.
  final String? version;

  /// Creates a new [GetContentTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Content type description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [schema] Content type schema.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Content type version.
  const GetContentTypeResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.name,
    this.schema,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'schema': ?schema,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetContentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetContentTypeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
