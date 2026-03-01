// ignore_for_file: unused_element, unnecessary_cast


class GetPoolMountAzureBlobFileSystem {
  /// The Azure Storage Account key.
  final String accountKey;
  /// The Batch Account name associated with the Batch pool.
  final String accountName;
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final String blobfuseOptions;
  /// The Azure Blob Storage Container name.
  final String containerName;
  /// The ARM resource id of the user assigned identity. This property is mutually exclusive with both `account_key` and `sas_key`; exactly one must be specified.
  final String identityId;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final String relativeMountPath;
  /// The Azure Storage SAS token. This property is mutually exclusive with both `account_key` and `identity_id`; exactly one must be specified.
  final String sasKey;

  /// Creates a new [GetPoolMountAzureBlobFileSystem].
  /// [accountKey] The Azure Storage Account key.
  /// [accountName] The Batch Account name associated with the Batch pool.
  /// [blobfuseOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [containerName] The Azure Blob Storage Container name.
  /// [identityId] The ARM resource id of the user assigned identity. This property is mutually exclusive with both `account_key` and `sas_key`; exactly one must be specified.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  /// [sasKey] The Azure Storage SAS token. This property is mutually exclusive with both `account_key` and `identity_id`; exactly one must be specified.
  GetPoolMountAzureBlobFileSystem({
    required this.accountKey,
    required this.accountName,
    required this.blobfuseOptions,
    required this.containerName,
    required this.identityId,
    required this.relativeMountPath,
    required this.sasKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'blobfuseOptions': blobfuseOptions,
      'containerName': containerName,
      'identityId': identityId,
      'relativeMountPath': relativeMountPath,
      'sasKey': sasKey,
    };
  }

  factory GetPoolMountAzureBlobFileSystem.fromMap(Map<String, dynamic> map) {
    return GetPoolMountAzureBlobFileSystem(
      accountKey: map['accountKey'] as String,
      accountName: map['accountName'] as String,
      blobfuseOptions: map['blobfuseOptions'] as String,
      containerName: map['containerName'] as String,
      identityId: map['identityId'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
      sasKey: map['sasKey'] as String,
    );
  }
}

