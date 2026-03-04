// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage Account.
class StorageAccount {
  /// The container in the storage account, only to be specified for WASB storage accounts.
  final pulumi.Input<String>? container;

  /// Enable secure channel or not, it's an optional field. Default value is false when cluster version &lt; 5.1 and true when cluster version &gt;= 5.1 ,
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

  /// Creates a new [StorageAccount].
  /// [container] The container in the storage account, only to be specified for WASB storage accounts.
  /// [enableSecureChannel] Enable secure channel or not, it's an optional field. Default value is false when cluster version &lt; 5.1 and true when cluster version &gt;= 5.1 ,
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
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableSecureChannel: (() {
        final guardedValue = map['enableSecureChannel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fileSystem: (() {
        final guardedValue = map['fileSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileshare: (() {
        final guardedValue = map['fileshare'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      msiResourceId: (() {
        final guardedValue = map['msiResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saskey: (() {
        final guardedValue = map['saskey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
