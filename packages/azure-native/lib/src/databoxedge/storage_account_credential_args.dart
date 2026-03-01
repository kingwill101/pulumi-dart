// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret.dart';

/// {@template pulumi_databoxedge_storage_account_credential_args_doc}
/// The set of arguments for StorageAccountCredential.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_storage_account_credential_args_doc}
class StorageAccountCredentialArgs {
  /// Encrypted storage key.
  final pulumi.Input<AsymmetricEncryptedSecret>? accountKey;
  /// Type of storage accessed on the storage account.
  final pulumi.Input<String> accountType;
  /// Alias for the storage account.
  final pulumi.Input<String> alias;
  /// Blob end point for private clouds.
  final pulumi.Input<String>? blobDomainName;
  /// Connection string for the storage account. Use this string if username and account key are not specified.
  final pulumi.Input<String>? connectionString;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The storage account credential name.
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Signifies whether SSL needs to be enabled or not.
  final pulumi.Input<String> sslStatus;
  /// Id of the storage account.
  final pulumi.Input<String>? storageAccountId;
  /// Username for the storage account.
  final pulumi.Input<String>? userName;

  /// Creates a new [StorageAccountCredentialArgs].
  /// [accountKey] Encrypted storage key.
  /// [accountType] Type of storage accessed on the storage account.
  /// [alias] Alias for the storage account.
  /// [blobDomainName] Blob end point for private clouds.
  /// [connectionString] Connection string for the storage account. Use this string if username and account key are not specified.
  /// [deviceName] The device name.
  /// [name] The storage account credential name.
  /// [resourceGroupName] The resource group name.
  /// [sslStatus] Signifies whether SSL needs to be enabled or not.
  /// [storageAccountId] Id of the storage account.
  /// [userName] Username for the storage account.
  StorageAccountCredentialArgs({
    AsymmetricEncryptedSecret? accountKey,
    required String accountType,
    required String alias,
    String? blobDomainName,
    String? connectionString,
    required String deviceName,
    String? name,
    required String resourceGroupName,
    required String sslStatus,
    String? storageAccountId,
    String? userName,
  }) :
      accountKey = pulumi.Input.asOptionalInput<AsymmetricEncryptedSecret>(accountKey),
      accountType = pulumi.Input.asInput<String>(accountType),
      alias = pulumi.Input.asInput<String>(alias),
      blobDomainName = pulumi.Input.asOptionalInput<String>(blobDomainName),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sslStatus = pulumi.Input.asInput<String>(sslStatus),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecret, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'accountType': accountType,
      'alias': alias,
      'blobDomainName': ?blobDomainName,
      'connectionString': ?connectionString,
      'deviceName': deviceName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sslStatus': sslStatus,
      'storageAccountId': ?storageAccountId,
      'userName': ?userName,
    };
  }

  factory StorageAccountCredentialArgs.fromMap(Map<String, dynamic> map) {
    return StorageAccountCredentialArgs(
      accountKey: map['accountKey'] == null ? null : AsymmetricEncryptedSecret.fromMap((map['accountKey'] as Map).cast<String, dynamic>()),
      accountType: map['accountType'] as String,
      alias: map['alias'] as String,
      blobDomainName: map['blobDomainName'] == null ? null : map['blobDomainName'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      deviceName: map['deviceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sslStatus: map['sslStatus'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

