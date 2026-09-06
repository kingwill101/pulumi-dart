// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchema.
class GetSchemaResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Free-form schema entity description.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Schema Type. Immutable.
  final String? schemaType;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Json-encoded string for non json-based schema.
  final String? value;

  /// Creates a new [GetSchemaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Free-form schema entity description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [schemaType] Schema Type. Immutable.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Json-encoded string for non json-based schema.
  const GetSchemaResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.name,
    this.schemaType,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'schemaType': ?schemaType,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
