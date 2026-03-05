// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyRestriction.
class GetPolicyRestrictionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Indicates if base policy should be enforced for the policy document.
  final String? requireBase;
  /// Path to the policy document.
  final String? scope;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPolicyRestrictionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [requireBase] Indicates if base policy should be enforced for the policy document.
  /// [scope] Path to the policy document.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPolicyRestrictionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.requireBase,
    this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'requireBase': ?requireBase,
      'scope': ?scope,
      'type': type,
    };
  }

  factory GetPolicyRestrictionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyRestrictionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      requireBase: (() { final guardedValue = map['requireBase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

