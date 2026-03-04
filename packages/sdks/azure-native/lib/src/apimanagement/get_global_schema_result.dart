// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGlobalSchema.
class GetGlobalSchemaResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Free-form schema entity description.
  final String? description;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Schema Type. Immutable.
  final String schemaType;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Json-encoded string for non json-based schema.
  final dynamic value;

  /// Creates a new [GetGlobalSchemaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Free-form schema entity description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [schemaType] Schema Type. Immutable.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Json-encoded string for non json-based schema.
  GetGlobalSchemaResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.name,
    required this.schemaType,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'name': name,
      'schemaType': schemaType,
      'type': type,
      'value': ?value,
    };
  }

  factory GetGlobalSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalSchemaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      schemaType: map['schemaType'] as String,
      type: map['type'] as String,
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
    );
  }
}
