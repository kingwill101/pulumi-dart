// ignore_for_file: unused_element, unnecessary_cast


/// Information used to connect to an Azure Fileshare.
class AzureFileShareConfiguration {
  /// The Azure Storage account key.
  final String accountKey;
  /// The Azure Storage account name.
  final String accountName;
  /// This is of the form 'https://{account}.file.core.windows.net/'.
  final String azureFileUrl;
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final String? mountOptions;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final String relativeMountPath;

  /// Creates a new [AzureFileShareConfiguration].
  /// [accountKey] The Azure Storage account key.
  /// [accountName] The Azure Storage account name.
  /// [azureFileUrl] This is of the form 'https://{account}.file.core.windows.net/'.
  /// [mountOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  AzureFileShareConfiguration({
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

  factory AzureFileShareConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureFileShareConfiguration(
      accountKey: map['accountKey'] as String,
      accountName: map['accountName'] as String,
      azureFileUrl: map['azureFileUrl'] as String,
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
    );
  }
}

