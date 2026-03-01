// ignore_for_file: unused_element, unnecessary_cast


/// The storage Account.
class StorageAccount {
  /// The container in the storage account, only to be specified for WASB storage accounts.
  final String? container;
  /// Enable secure channel or not, it's an optional field. Default value is false when cluster version < 5.1 and true when cluster version >= 5.1 ,
  final bool? enableSecureChannel;
  /// The filesystem, only to be specified for Azure Data Lake Storage Gen 2.
  final String? fileSystem;
  /// The file share name.
  final String? fileshare;
  /// Whether or not the storage account is the default storage account.
  final bool? isDefault;
  /// The storage account access key.
  final String? key;
  /// The managed identity (MSI) that is allowed to access the storage account, only to be specified for Azure Data Lake Storage Gen 2.
  final String? msiResourceId;
  /// The name of the storage account.
  final String? name;
  /// The resource ID of storage account, only to be specified for Azure Data Lake Storage Gen 2.
  final String? resourceId;
  /// The shared access signature key.
  final String? saskey;

  /// Creates a new [StorageAccount].
  /// [container] The container in the storage account, only to be specified for WASB storage accounts.
  /// [enableSecureChannel] Enable secure channel or not, it's an optional field. Default value is false when cluster version < 5.1 and true when cluster version >= 5.1 ,
  /// [fileSystem] The filesystem, only to be specified for Azure Data Lake Storage Gen 2.
  /// [fileshare] The file share name.
  /// [isDefault] Whether or not the storage account is the default storage account.
  /// [key] The storage account access key.
  /// [msiResourceId] The managed identity (MSI) that is allowed to access the storage account, only to be specified for Azure Data Lake Storage Gen 2.
  /// [name] The name of the storage account.
  /// [resourceId] The resource ID of storage account, only to be specified for Azure Data Lake Storage Gen 2.
  /// [saskey] The shared access signature key.
  StorageAccount({
    this.container,
    this.enableSecureChannel,
    this.fileSystem,
    this.fileshare,
    this.isDefault,
    this.key,
    this.msiResourceId,
    this.name,
    this.resourceId,
    this.saskey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'enableSecureChannel': ?enableSecureChannel,
      'fileSystem': ?fileSystem,
      'fileshare': ?fileshare,
      'isDefault': ?isDefault,
      'key': ?key,
      'msiResourceId': ?msiResourceId,
      'name': ?name,
      'resourceId': ?resourceId,
      'saskey': ?saskey,
    };
  }

  factory StorageAccount.fromMap(Map<String, dynamic> map) {
    return StorageAccount(
      container: map['container'] == null ? null : map['container'] as String,
      enableSecureChannel: map['enableSecureChannel'] == null ? null : map['enableSecureChannel'] as bool,
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'] as String,
      fileshare: map['fileshare'] == null ? null : map['fileshare'] as String,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      msiResourceId: map['msiResourceId'] == null ? null : map['msiResourceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      saskey: map['saskey'] == null ? null : map['saskey'] as String,
    );
  }
}

