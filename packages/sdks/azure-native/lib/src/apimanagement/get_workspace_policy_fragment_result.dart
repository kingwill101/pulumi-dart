// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspacePolicyFragment.
class GetWorkspacePolicyFragmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Policy fragment description.
  final String? description;
  /// Format of the policy fragment content.
  final String? format;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Contents of the policy fragment.
  final String? value;

  /// Creates a new [GetWorkspacePolicyFragmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Policy fragment description.
  /// [format] Format of the policy fragment content.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Contents of the policy fragment.
  GetWorkspacePolicyFragmentResult({
    this.azureApiVersion,
    this.description,
    String? format,
    this.id,
    this.name,
    this.provisioningState,
    this.type,
    this.value,
  }) : format = format ?? 'xml';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'format': ?format,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetWorkspacePolicyFragmentResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspacePolicyFragmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
