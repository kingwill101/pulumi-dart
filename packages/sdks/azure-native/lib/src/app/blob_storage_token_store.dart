// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the storage of the tokens if blob storage is used.
class BlobStorageTokenStore {
  /// The URI of the blob storage containing the tokens. Should not be used along with sasUrlSettingName.
  final pulumi.Input<String>? blobContainerUri;
  /// The Client ID of a User-Assigned Managed Identity. Should not be used along with managedIdentityResourceId.
  final pulumi.Input<String>? clientId;
  /// The Resource ID of a User-Assigned Managed Identity. Should not be used along with clientId.
  final pulumi.Input<String>? managedIdentityResourceId;
  /// The name of the app secrets containing the SAS URL of the blob storage containing the tokens. Should not be used along with blobContainerUri.
  final pulumi.Input<String>? sasUrlSettingName;

  /// Creates a new [BlobStorageTokenStore].
  /// [blobContainerUri] The URI of the blob storage containing the tokens. Should not be used along with sasUrlSettingName.
  /// [clientId] The Client ID of a User-Assigned Managed Identity. Should not be used along with managedIdentityResourceId.
  /// [managedIdentityResourceId] The Resource ID of a User-Assigned Managed Identity. Should not be used along with clientId.
  /// [sasUrlSettingName] The name of the app secrets containing the SAS URL of the blob storage containing the tokens. Should not be used along with blobContainerUri.
  const BlobStorageTokenStore({
    this.blobContainerUri,
    this.clientId,
    this.managedIdentityResourceId,
    this.sasUrlSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerUri': ?blobContainerUri,
      'clientId': ?clientId,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'sasUrlSettingName': ?sasUrlSettingName,
    };
  }

  factory BlobStorageTokenStore.fromMap(Map<String, dynamic> map) {
    return BlobStorageTokenStore(
      blobContainerUri: (() { final guardedValue = map['blobContainerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasUrlSettingName: (() { final guardedValue = map['sasUrlSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

