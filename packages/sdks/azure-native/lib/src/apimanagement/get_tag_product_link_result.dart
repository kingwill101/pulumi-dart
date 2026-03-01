// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTagProductLink.
class GetTagProductLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Full resource Id of a product.
  final String productId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTagProductLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [productId] Full resource Id of a product.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTagProductLinkResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.productId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'productId': productId,
      'type': type,
    };
  }

  factory GetTagProductLinkResult.fromMap(Map<String, dynamic> map) {
    return GetTagProductLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      productId: map['productId'] as String,
      type: map['type'] as String,
    );
  }
}

