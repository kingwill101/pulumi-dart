// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_definition.dart';
import 'service_principal_definition.dart';

/// Parameters to reconcile to the AzureBlob source kind type.
class AzureBlobDefinition {
  /// The account key (shared key) to access the storage account
  final pulumi.Input<String>? accountKey;

  /// The Azure Blob container name to sync from the url endpoint for the flux configuration.
  final pulumi.Input<String>? containerName;

  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthRef;

  /// Parameters to authenticate using a Managed Identity.
  final pulumi.Input<ManagedIdentityDefinition>? managedIdentity;

  /// The Shared Access token to access the storage container
  final pulumi.Input<String>? sasToken;

  /// Parameters to authenticate using Service Principal.
  final pulumi.Input<ServicePrincipalDefinition>? servicePrincipal;

  /// The interval at which to re-reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<double>? syncIntervalInSeconds;

  /// The maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  final pulumi.Input<double>? timeoutInSeconds;

  /// The URL to sync for the flux configuration Azure Blob storage account.
  final pulumi.Input<String>? url;

  /// Creates a new [AzureBlobDefinition].
  /// [accountKey] The account key (shared key) to access the storage account
  /// [containerName] The Azure Blob container name to sync from the url endpoint for the flux configuration.
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [managedIdentity] Parameters to authenticate using a Managed Identity.
  /// [sasToken] The Shared Access token to access the storage container
  /// [servicePrincipal] Parameters to authenticate using Service Principal.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster Azure Blob source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  /// [url] The URL to sync for the flux configuration Azure Blob storage account.
  AzureBlobDefinition({
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
      'managedIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentityDefinition,
            Map<String, dynamic>
          >(managedIdentity, (value) => value.toMap()),
      'sasToken': ?sasToken,
      'servicePrincipal':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePrincipalDefinition,
            Map<String, dynamic>
          >(servicePrincipal, (value) => value.toMap()),
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory AzureBlobDefinition.fromMap(Map<String, dynamic> map) {
    return AzureBlobDefinition(
      accountKey: (() {
        final guardedValue = map['accountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerName: (() {
        final guardedValue = map['containerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localAuthRef: (() {
        final guardedValue = map['localAuthRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedIdentity: (() {
        final guardedValue = map['managedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentityDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sasToken: (() {
        final guardedValue = map['sasToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicePrincipal: (() {
        final guardedValue = map['servicePrincipal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePrincipalDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      syncIntervalInSeconds: (() {
        final guardedValue = map['syncIntervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      timeoutInSeconds: (() {
        final guardedValue = map['timeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
