// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the storage of the tokens if blob storage is used.
class BlobStorageTokenStoreResponse {
  /// The URI of the blob storage containing the tokens. Should not be used along with sasUrlSettingName.
  final String? blobContainerUri;
  /// The Client ID of a User-Assigned Managed Identity. Should not be used along with managedIdentityResourceId.
  final String? clientId;
  /// The Resource ID of a User-Assigned Managed Identity. Should not be used along with clientId.
  final String? managedIdentityResourceId;
  /// The name of the app secrets containing the SAS URL of the blob storage containing the tokens. Should not be used along with blobContainerUri.
  final String? sasUrlSettingName;

  /// Creates a new [BlobStorageTokenStoreResponse].
  /// [blobContainerUri] The URI of the blob storage containing the tokens. Should not be used along with sasUrlSettingName.
  /// [clientId] The Client ID of a User-Assigned Managed Identity. Should not be used along with managedIdentityResourceId.
  /// [managedIdentityResourceId] The Resource ID of a User-Assigned Managed Identity. Should not be used along with clientId.
  /// [sasUrlSettingName] The name of the app secrets containing the SAS URL of the blob storage containing the tokens. Should not be used along with blobContainerUri.
  BlobStorageTokenStoreResponse({
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

  factory BlobStorageTokenStoreResponse.fromMap(Map<String, dynamic> map) {
    return BlobStorageTokenStoreResponse(
      blobContainerUri: map['blobContainerUri'] == null ? null : map['blobContainerUri'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      managedIdentityResourceId: map['managedIdentityResourceId'] == null ? null : map['managedIdentityResourceId'] as String,
      sasUrlSettingName: map['sasUrlSettingName'] == null ? null : map['sasUrlSettingName'] as String,
    );
  }
}

