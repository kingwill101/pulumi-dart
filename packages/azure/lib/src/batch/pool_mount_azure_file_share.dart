// ignore_for_file: unused_element, unnecessary_cast


class PoolMountAzureFileShare {
  /// The Azure Storage Account key.
  final String accountKey;
  /// The Azure Storage Account name.
  final String accountName;
  /// The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  final String azureFileUrl;
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final String? mountOptions;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final String relativeMountPath;

  /// Creates a new [PoolMountAzureFileShare].
  /// [accountKey] The Azure Storage Account key.
  /// [accountName] The Azure Storage Account name.
  /// [azureFileUrl] The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  PoolMountAzureFileShare({
    required this.accountKey,
    required this.accountName,
    required this.azureFileUrl,
    this.mountOptions,
    required this.relativeMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'azureFileUrl': azureFileUrl,
      'mountOptions': ?mountOptions,
      'relativeMountPath': relativeMountPath,
    };
  }

  factory PoolMountAzureFileShare.fromMap(Map<String, dynamic> map) {
    return PoolMountAzureFileShare(
      accountKey: map['accountKey'] as String,
      accountName: map['accountName'] as String,
      azureFileUrl: map['azureFileUrl'] as String,
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
    );
  }
}

