// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClientApplicationProductLink.
class GetClientApplicationProductLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The unique resource identifier of the Product.
  final String productId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetClientApplicationProductLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [productId] The unique resource identifier of the Product.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetClientApplicationProductLinkResult({
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

  factory GetClientApplicationProductLinkResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClientApplicationProductLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      productId: map['productId'] as String,
      type: map['type'] as String,
    );
  }
}
