// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicyFragment.
class GetPolicyFragmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Policy fragment description.
  final String? description;

  /// Format of the policy fragment content.
  final String? format;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Contents of the policy fragment.
  final String value;

  /// Creates a new [GetPolicyFragmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Policy fragment description.
  /// [format] Format of the policy fragment content.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Contents of the policy fragment.
  GetPolicyFragmentResult({
    required this.azureApiVersion,
    this.description,
    this.format,
    required this.id,
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'format': ?format,
      'id': id,
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetPolicyFragmentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyFragmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
