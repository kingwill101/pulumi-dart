// ignore_for_file: unused_element, unnecessary_cast


class GetDatasetBlobStorageStorageAccount {
  /// The name of this Data Share Blob Storage Dataset.
  final String name;
  /// The resource group name of the storage account to be shared with the receiver.
  final String resourceGroupName;
  /// The subscription id of the storage account to be shared with the receiver.
  final String subscriptionId;

  /// Creates a new [GetDatasetBlobStorageStorageAccount].
  /// [name] The name of this Data Share Blob Storage Dataset.
  /// [resourceGroupName] The resource group name of the storage account to be shared with the receiver.
  /// [subscriptionId] The subscription id of the storage account to be shared with the receiver.
  GetDatasetBlobStorageStorageAccount({
    required this.name,
    required this.resourceGroupName,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetDatasetBlobStorageStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetDatasetBlobStorageStorageAccount(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

