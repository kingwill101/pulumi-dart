// ignore_for_file: unused_element, unnecessary_cast


class AppServiceStorageAccount {
  /// The access key for the storage account.
  final String accessKey;
  /// The name of the storage account.
  final String accountName;
  /// The path to mount the storage within the site's runtime environment.
  final String? mountPath;
  /// The name of the storage account identifier.
  final String name;
  /// The name of the file share (container name, for Blob storage).
  final String shareName;
  /// The type of storage. Possible values are `AzureBlob` and `AzureFiles`.
  final String type;

  /// Creates a new [AppServiceStorageAccount].
  /// [accessKey] The access key for the storage account.
  /// [accountName] The name of the storage account.
  /// [mountPath] The path to mount the storage within the site's runtime environment.
  /// [name] The name of the storage account identifier.
  /// [shareName] The name of the file share (container name, for Blob storage).
  /// [type] The type of storage. Possible values are `AzureBlob` and `AzureFiles`.
  AppServiceStorageAccount({
    required this.accessKey,
    required this.accountName,
    this.mountPath,
    required this.name,
    required this.shareName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'accountName': accountName,
      'mountPath': ?mountPath,
      'name': name,
      'shareName': shareName,
      'type': type,
    };
  }

  factory AppServiceStorageAccount.fromMap(Map<String, dynamic> map) {
    return AppServiceStorageAccount(
      accessKey: map['accessKey'] as String,
      accountName: map['accountName'] as String,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      name: map['name'] as String,
      shareName: map['shareName'] as String,
      type: map['type'] as String,
    );
  }
}

