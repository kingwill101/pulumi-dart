// ignore_for_file: unused_element, unnecessary_cast


/// The resource names object for shared storage.
class SharedStorageResourceNamesResponse {
  /// The full name of the shared storage account. If it is not provided, it will be defaulted to {SID}nfs{guid of 15 chars}.
  final String? sharedStorageAccountName;
  /// The full name of private end point for the shared storage account. If it is not provided, it will be defaulted to {storageAccountName}_pe
  final String? sharedStorageAccountPrivateEndPointName;

  /// Creates a new [SharedStorageResourceNamesResponse].
  /// [sharedStorageAccountName] The full name of the shared storage account. If it is not provided, it will be defaulted to {SID}nfs{guid of 15 chars}.
  /// [sharedStorageAccountPrivateEndPointName] The full name of private end point for the shared storage account. If it is not provided, it will be defaulted to {storageAccountName}_pe
  SharedStorageResourceNamesResponse({
    this.sharedStorageAccountName,
    this.sharedStorageAccountPrivateEndPointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedStorageAccountName': ?sharedStorageAccountName,
      'sharedStorageAccountPrivateEndPointName': ?sharedStorageAccountPrivateEndPointName,
    };
  }

  factory SharedStorageResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return SharedStorageResourceNamesResponse(
      sharedStorageAccountName: map['sharedStorageAccountName'] == null ? null : map['sharedStorageAccountName'] as String,
      sharedStorageAccountPrivateEndPointName: map['sharedStorageAccountPrivateEndPointName'] == null ? null : map['sharedStorageAccountPrivateEndPointName'] as String,
    );
  }
}

