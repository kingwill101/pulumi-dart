// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceProductPolicy.
class GetWorkspaceProductPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Format of the policyContent.
  final String? format;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Contents of the Policy as defined by the format.
  final String value;

  /// Creates a new [GetWorkspaceProductPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [format] Format of the policyContent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Contents of the Policy as defined by the format.
  const GetWorkspaceProductPolicyResult({
    required this.azureApiVersion,
    this.format,
    required this.id,
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'format': ?format,
      'id': id,
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetWorkspaceProductPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceProductPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
