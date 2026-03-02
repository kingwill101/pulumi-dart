// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_definition_response.dart';
import 'service_principal_definition_response.dart';

/// Parameters to reconcile to the AzureBlob source kind type.
class AzureBlobDefinitionResponse {
  /// The account key (shared key) to access the storage account
  final pulumi.Input<String>? accountKey;
  /// The Azure Blob container name to sync from the url endpoint for the flux configuration.
  final pulumi.Input<String>? containerName;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthRef;
  /// Parameters to authenticate using a Managed Identity.
  final pulumi.Input<ManagedIdentityDefinitionResponse>? managedIdentity;
  /// The Shared Access token to access the storage container
  final pulumi.Input<String>? sasToken;
  /// Parameters to authenticate using Service Principal.
  final pulumi.Input<ServicePrincipalDefinitionResponse>? servicePrincipal;
  /// The interval at which to re-reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<double>? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<double>? timeoutInSeconds;
  /// The URL to sync for the flux configuration Azure Blob storage account.
  final pulumi.Input<String>? url;

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
      'managedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityDefinitionResponse, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'sasToken': ?sasToken,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalDefinitionResponse, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory AzureBlobDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobDefinitionResponse(
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      localAuthRef: map['localAuthRef'] == null ? null : (map['localAuthRef'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (ManagedIdentityDefinitionResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>())).input(),
      sasToken: map['sasToken'] == null ? null : (map['sasToken'] as String).input(),
      servicePrincipal: map['servicePrincipal'] == null ? null : (ServicePrincipalDefinitionResponse.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>())).input(),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : (map['syncIntervalInSeconds'] as double).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as double).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

