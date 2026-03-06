// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_credentials_response.dart';

class AzureStorageSectionResponse {
  /// Storage Account Key (Deprecated).
  final pulumi.Input<String>? accountKey;
  /// Storage Account Name.
  final pulumi.Input<String>? accountName;
  /// Indicate if we are using Workspace ManagedIdentities/MSI token (Deprecated).
  final pulumi.Input<bool>? areWorkspaceManagedIdentitiesAllowed;
  /// If this is an "DataStoreType.AzureBlob", the length of time (in seconds) to cache files locally after they are accessed (downloaded).
  final pulumi.Input<int>? blobCacheTimeout;
  final pulumi.Input<ClientCredentialsResponse>? clientCredentials;
  /// The storage container name.
  final pulumi.Input<String>? containerName;
  /// The credential.
  final pulumi.Input<String>? credential;
  /// The credential type.
  final pulumi.Input<String>? credentialType;
  /// The host of the container.
  final pulumi.Input<String>? endpoint;
  /// Indicate if we are using SAS token or Account Key (Deprecated).
  final pulumi.Input<bool>? isSas;
  /// The protocol to use. Defaults to https.
  final pulumi.Input<String>? protocol;
  /// Resource Group.
  final pulumi.Input<String>? resourceGroup;
  /// SAS Token for the container (Deprecated).
  final pulumi.Input<String>? sasToken;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String>? serviceDataAccessAuthIdentity;
  /// Subscription ID.
  final pulumi.Input<String>? subscriptionId;

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
  const AzureStorageSectionResponse({
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
      'clientCredentials': ?pulumi.Input.mapOptionalInputValue<ClientCredentialsResponse, Map<String, dynamic>>(clientCredentials, (value) => value.toMap()),
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
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      areWorkspaceManagedIdentitiesAllowed: (() { final guardedValue = map['areWorkspaceManagedIdentitiesAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blobCacheTimeout: (() { final guardedValue = map['blobCacheTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientCredentials: (() { final guardedValue = map['clientCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSas: (() { final guardedValue = map['isSas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDataAccessAuthIdentity: (() { final guardedValue = map['serviceDataAccessAuthIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

