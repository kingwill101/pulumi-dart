// ignore_for_file: unused_element, unnecessary_cast


class AccountStorage {
  /// The ID of the storage account to be associated with the Video Indexer Account. Changing this forces a new Video Indexer Account to be created.
  final String storageAccountId;
  /// The reference to the user assigned identity to use to access the Storage Account.
  final String? userAssignedIdentityId;

  /// Creates a new [AccountStorage].
  /// [storageAccountId] The ID of the storage account to be associated with the Video Indexer Account. Changing this forces a new Video Indexer Account to be created.
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access the Storage Account.
  AccountStorage({
    required this.storageAccountId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': storageAccountId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountStorage.fromMap(Map<String, dynamic> map) {
    return AccountStorage(
      storageAccountId: map['storageAccountId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

