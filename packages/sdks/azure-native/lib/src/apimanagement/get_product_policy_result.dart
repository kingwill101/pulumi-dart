// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProductPolicy.
class GetProductPolicyResult {
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

  /// Creates a new [GetProductPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [format] Format of the policyContent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Contents of the Policy as defined by the format.
  GetProductPolicyResult({
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

  factory GetProductPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetProductPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

