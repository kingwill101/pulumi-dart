// ignore_for_file: unused_element, unnecessary_cast

import 'auth_type.dart';
import 'managed_service_identity.dart';

/// Azure Blob Details
class AzureBlob {
  /// Storage Account Key.
  final String? accountKey;
  /// Authentication type used for accessing Azure Blob Storage.
  final AuthType? authType;
  /// Blob container name where backups are stored.
  final String? blobContainerName;
  /// Identity details for authentication using a Managed Identity.
  final ManagedServiceIdentity? identity;
  /// Resource Id of the storage account where backups are stored.
  final String? storageAccountResourceId;

  /// Creates a new [AzureBlob].
  /// [accountKey] Storage Account Key.
  /// [authType] Authentication type used for accessing Azure Blob Storage.
  /// [blobContainerName] Blob container name where backups are stored.
  /// [identity] Identity details for authentication using a Managed Identity.
  /// [storageAccountResourceId] Resource Id of the storage account where backups are stored.
  AzureBlob({
    this.accountKey,
    this.authType,
    this.blobContainerName,
    this.identity,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'authType': ?authType == null ? null : authType!.value,
      'blobContainerName': ?blobContainerName,
      'identity': ?identity == null ? null : identity!.toMap(),
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory AzureBlob.fromMap(Map<String, dynamic> map) {
    return AzureBlob(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      authType: map['authType'] == null ? null : AuthType.fromValue(map['authType'] as String),
      blobContainerName: map['blobContainerName'] == null ? null : map['blobContainerName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
    );
  }
}

