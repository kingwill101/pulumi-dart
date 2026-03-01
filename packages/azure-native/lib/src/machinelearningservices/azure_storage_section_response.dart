// ignore_for_file: unused_element, unnecessary_cast

import 'client_credentials_response.dart';

class AzureStorageSectionResponse {
  /// Storage Account Key (Deprecated).
  final String? accountKey;
  /// Storage Account Name.
  final String? accountName;
  /// Indicate if we are using Workspace ManagedIdentities/MSI token (Deprecated).
  final bool? areWorkspaceManagedIdentitiesAllowed;
  /// If this is an "DataStoreType.AzureBlob", the length of time (in seconds) to cache files locally after they are accessed (downloaded).
  final int? blobCacheTimeout;
  final ClientCredentialsResponse? clientCredentials;
  /// The storage container name.
  final String? containerName;
  /// The credential.
  final String? credential;
  /// The credential type.
  final String? credentialType;
  /// The host of the container.
  final String? endpoint;
  /// Indicate if we are using SAS token or Account Key (Deprecated).
  final bool? isSas;
  /// The protocol to use. Defaults to https.
  final String? protocol;
  /// Resource Group.
  final String? resourceGroup;
  /// SAS Token for the container (Deprecated).
  final String? sasToken;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// Subscription ID.
  final String? subscriptionId;

  /// Creates a new [AzureStorageSectionResponse].
  /// [accountKey] Storage Account Key (Deprecated).
  /// [accountName] Storage Account Name.
  /// [areWorkspaceManagedIdentitiesAllowed] Indicate if we are using Workspace ManagedIdentities/MSI token (Deprecated).
  /// [blobCacheTimeout] If this is an "DataStoreType.AzureBlob", the length of time (in seconds) to cache files locally after they are accessed (downloaded).
  /// [clientCredentials] Optional.
  /// [containerName] The storage container name.
  /// [credential] The credential.
  /// [credentialType] The credential type.
  /// [endpoint] The host of the container.
  /// [isSas] Indicate if we are using SAS token or Account Key (Deprecated).
  /// [protocol] The protocol to use. Defaults to https.
  /// [resourceGroup] Resource Group.
  /// [sasToken] SAS Token for the container (Deprecated).
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Subscription ID.
  AzureStorageSectionResponse({
    this.accountKey,
    this.accountName,
    this.areWorkspaceManagedIdentitiesAllowed,
    this.blobCacheTimeout,
    this.clientCredentials,
    this.containerName,
    this.credential,
    this.credentialType,
    this.endpoint,
    this.isSas,
    this.protocol,
    this.resourceGroup,
    this.sasToken,
    this.serviceDataAccessAuthIdentity,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
      'areWorkspaceManagedIdentitiesAllowed': ?areWorkspaceManagedIdentitiesAllowed,
      'blobCacheTimeout': ?blobCacheTimeout,
      'clientCredentials': ?clientCredentials == null ? null : clientCredentials!.toMap(),
      'containerName': ?containerName,
      'credential': ?credential,
      'credentialType': ?credentialType,
      'endpoint': ?endpoint,
      'isSas': ?isSas,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'sasToken': ?sasToken,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AzureStorageSectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageSectionResponse(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      areWorkspaceManagedIdentitiesAllowed: map['areWorkspaceManagedIdentitiesAllowed'] == null ? null : map['areWorkspaceManagedIdentitiesAllowed'] as bool,
      blobCacheTimeout: map['blobCacheTimeout'] == null ? null : map['blobCacheTimeout'] as int,
      clientCredentials: map['clientCredentials'] == null ? null : ClientCredentialsResponse.fromMap((map['clientCredentials'] as Map).cast<String, dynamic>()),
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      credential: map['credential'] == null ? null : map['credential'] as String,
      credentialType: map['credentialType'] == null ? null : map['credentialType'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      isSas: map['isSas'] == null ? null : map['isSas'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

