// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_definition_response.dart';
import 'service_principal_definition_response.dart';

/// Parameters to reconcile to the AzureBlob source kind type.
class AzureBlobDefinitionResponse {
  /// The account key (shared key) to access the storage account
  final String? accountKey;
  /// The Azure Blob container name to sync from the url endpoint for the flux configuration.
  final String? containerName;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final String? localAuthRef;
  /// Parameters to authenticate using a Managed Identity.
  final ManagedIdentityDefinitionResponse? managedIdentity;
  /// The Shared Access token to access the storage container
  final String? sasToken;
  /// Parameters to authenticate using Service Principal.
  final ServicePrincipalDefinitionResponse? servicePrincipal;
  /// The interval at which to re-reconcile the cluster Azure Blob source with the remote.
  final double? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  final double? timeoutInSeconds;
  /// The URL to sync for the flux configuration Azure Blob storage account.
  final String? url;

  /// Creates a new [AzureBlobDefinitionResponse].
  /// [accountKey] The account key (shared key) to access the storage account
  /// [containerName] The Azure Blob container name to sync from the url endpoint for the flux configuration.
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [managedIdentity] Parameters to authenticate using a Managed Identity.
  /// [sasToken] The Shared Access token to access the storage container
  /// [servicePrincipal] Parameters to authenticate using Service Principal.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster Azure Blob source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  /// [url] The URL to sync for the flux configuration Azure Blob storage account.
  AzureBlobDefinitionResponse({
    this.accountKey,
    this.containerName,
    this.localAuthRef,
    this.managedIdentity,
    this.sasToken,
    this.servicePrincipal,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'containerName': ?containerName,
      'localAuthRef': ?localAuthRef,
      'managedIdentity': ?managedIdentity == null ? null : managedIdentity!.toMap(),
      'sasToken': ?sasToken,
      'servicePrincipal': ?servicePrincipal == null ? null : servicePrincipal!.toMap(),
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory AzureBlobDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobDefinitionResponse(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      localAuthRef: map['localAuthRef'] == null ? null : map['localAuthRef'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : ManagedIdentityDefinitionResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      servicePrincipal: map['servicePrincipal'] == null ? null : ServicePrincipalDefinitionResponse.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>()),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as double,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as double,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

