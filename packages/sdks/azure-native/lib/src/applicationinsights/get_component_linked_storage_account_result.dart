// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getComponentLinkedStorageAccount.
class GetComponentLinkedStorageAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Linked storage account resource ID
  final String? linkedStorageAccount;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetComponentLinkedStorageAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [linkedStorageAccount] Linked storage account resource ID
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetComponentLinkedStorageAccountResult({
    required this.azureApiVersion,
    required this.id,
    this.linkedStorageAccount,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'linkedStorageAccount': ?linkedStorageAccount,
      'name': name,
      'type': type,
    };
  }

  factory GetComponentLinkedStorageAccountResult.fromMap(Map<String, dynamic> map) {
    return GetComponentLinkedStorageAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      linkedStorageAccount: (() { final guardedValue = map['linkedStorageAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

