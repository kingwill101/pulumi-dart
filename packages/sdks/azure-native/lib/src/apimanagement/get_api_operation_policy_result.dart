// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiOperationPolicy.
class GetApiOperationPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Format of the policyContent.
  final String? format;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Contents of the Policy as defined by the format.
  final String? value;

  /// Creates a new [GetApiOperationPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [format] Format of the policyContent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Contents of the Policy as defined by the format.
  GetApiOperationPolicyResult({
    this.azureApiVersion,
    String? format,
    this.id,
    this.name,
    this.type,
    this.value,
  }) : format = format ?? 'xml';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'format': ?format,
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetApiOperationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetApiOperationPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
