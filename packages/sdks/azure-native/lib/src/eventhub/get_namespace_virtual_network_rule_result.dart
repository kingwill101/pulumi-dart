// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceVirtualNetworkRule.
class GetNamespaceVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// ARM ID of Virtual Network Subnet
  final String? virtualNetworkSubnetId;

  /// Creates a new [GetNamespaceVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetworkSubnetId] ARM ID of Virtual Network Subnet
  const GetNamespaceVirtualNetworkRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.type,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'type': type,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory GetNamespaceVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceVirtualNetworkRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

