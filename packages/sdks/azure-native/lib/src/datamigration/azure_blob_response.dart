// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';

/// Azure Blob Details
class AzureBlobResponse {
  /// Storage Account Key.
  final pulumi.Input<String>? accountKey;
  /// Authentication type used for accessing Azure Blob Storage.
  final pulumi.Input<String>? authType;
  /// Blob container name where backups are stored.
  final pulumi.Input<String>? blobContainerName;
  /// Identity details for authentication using a Managed Identity.
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;
  /// Resource Id of the storage account where backups are stored.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [AzureBlobResponse].
  /// [accountKey] Storage Account Key.
  /// [authType] Authentication type used for accessing Azure Blob Storage.
  /// [blobContainerName] Blob container name where backups are stored.
  /// [identity] Identity details for authentication using a Managed Identity.
  /// [storageAccountResourceId] Resource Id of the storage account where backups are stored.
  const AzureBlobResponse({
    this.accountKey,
    this.authType,
    this.blobContainerName,
    this.identity,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'authType': ?authType,
      'blobContainerName': ?blobContainerName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory AzureBlobResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobResponse(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blobContainerName: (() { final guardedValue = map['blobContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
