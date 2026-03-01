// ignore_for_file: unused_element, unnecessary_cast


class InteractiveQueryClusterStorageAccountGen2 {
  /// The ID of the Gen2 Filesystem. Changing this forces a new resource to be created.
  final String filesystemId;
  /// Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of the `storage_account` or `storage_account_gen2` blocks must be marked as the default.
  final bool isDefault;
  /// The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can be obtained from the `id` of the `azure.storage.Container` resource.
  final String managedIdentityResourceId;
  /// The ID of the Storage Account. Changing this forces a new resource to be created.
  final String storageResourceId;

  /// Creates a new [InteractiveQueryClusterStorageAccountGen2].
  /// [filesystemId] The ID of the Gen2 Filesystem. Changing this forces a new resource to be created.
  /// [isDefault] Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  /// [managedIdentityResourceId] The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created.
  /// [storageResourceId] The ID of the Storage Account. Changing this forces a new resource to be created.
  InteractiveQueryClusterStorageAccountGen2({
    required this.filesystemId,
    required this.isDefault,
    required this.managedIdentityResourceId,
    required this.storageResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystemId': filesystemId,
      'isDefault': isDefault,
      'managedIdentityResourceId': managedIdentityResourceId,
      'storageResourceId': storageResourceId,
    };
  }

  factory InteractiveQueryClusterStorageAccountGen2.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterStorageAccountGen2(
      filesystemId: map['filesystemId'] as String,
      isDefault: map['isDefault'] as bool,
      managedIdentityResourceId: map['managedIdentityResourceId'] as String,
      storageResourceId: map['storageResourceId'] as String,
    );
  }
}

