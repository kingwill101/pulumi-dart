// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage Account.
class StorageAccountResponse {
  /// The container in the storage account, only to be specified for WASB storage accounts.
  final pulumi.Input<String>? container;
  /// Enable secure channel or not, it's an optional field. Default value is false when cluster version < 5.1 and true when cluster version >= 5.1 ,
  final pulumi.Input<bool>? enableSecureChannel;
  /// The filesystem, only to be specified for Azure Data Lake Storage Gen 2.
  final pulumi.Input<String>? fileSystem;
  /// The file share name.
  final pulumi.Input<String>? fileshare;
  /// Whether or not the storage account is the default storage account.
  final pulumi.Input<bool>? isDefault;
  /// The storage account access key.
  final pulumi.Input<String>? key;
  /// The managed identity (MSI) that is allowed to access the storage account, only to be specified for Azure Data Lake Storage Gen 2.
  final pulumi.Input<String>? msiResourceId;
  /// The name of the storage account.
  final pulumi.Input<String>? name;
  /// The resource ID of storage account, only to be specified for Azure Data Lake Storage Gen 2.
  final pulumi.Input<String>? resourceId;
  /// The shared access signature key.
  final pulumi.Input<String>? saskey;

  /// Creates a new [StorageAccountResponse].
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
  StorageAccountResponse({
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

  factory StorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountResponse(
      container: map['container'] == null ? null : (map['container'] as String).input(),
      enableSecureChannel: map['enableSecureChannel'] == null ? null : (map['enableSecureChannel'] as bool).input(),
      fileSystem: map['fileSystem'] == null ? null : (map['fileSystem'] as String).input(),
      fileshare: map['fileshare'] == null ? null : (map['fileshare'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      msiResourceId: map['msiResourceId'] == null ? null : (map['msiResourceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      saskey: map['saskey'] == null ? null : (map['saskey'] as String).input(),
    );
  }
}

