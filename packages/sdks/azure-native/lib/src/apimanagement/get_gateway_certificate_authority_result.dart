// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGatewayCertificateAuthority.
class GetGatewayCertificateAuthorityResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Determines whether certificate authority is trusted.
  final bool? isTrusted;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGatewayCertificateAuthorityResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isTrusted] Determines whether certificate authority is trusted.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGatewayCertificateAuthorityResult({
    required this.azureApiVersion,
    required this.id,
    this.isTrusted,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'isTrusted': ?isTrusted,
      'name': name,
      'type': type,
    };
  }

  factory GetGatewayCertificateAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayCertificateAuthorityResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      isTrusted: (() { final guardedValue = map['isTrusted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

