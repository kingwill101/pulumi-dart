// ignore_for_file: unused_element, unnecessary_cast

import 'flux_configuration_blob_storage_service_principal.dart';

class FluxConfigurationBlobStorage {
  /// Specifies the account key (shared key) to access the storage account.
  final String? accountKey;
  /// Specifies the Azure Blob container ID.
  final String containerId;
  /// Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final String? localAuthReference;
  /// Specifies the shared access token to access the storage container.
  final String? sasToken;
  /// A `service_principal` block as defined below.
  final FluxConfigurationBlobStorageServicePrincipal? servicePrincipal;
  /// Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote.
  final int? syncIntervalInSeconds;
  /// Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  final int? timeoutInSeconds;

  /// Creates a new [FluxConfigurationBlobStorage].
  /// [accountKey] Specifies the account key (shared key) to access the storage account.
  /// [containerId] Specifies the Azure Blob container ID.
  /// [localAuthReference] Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [sasToken] Specifies the shared access token to access the storage container.
  /// [servicePrincipal] A `service_principal` block as defined below.
  /// [syncIntervalInSeconds] Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote.
  /// [timeoutInSeconds] Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
  FluxConfigurationBlobStorage({
    this.accountKey,
    required this.containerId,
    this.localAuthReference,
    this.sasToken,
    this.servicePrincipal,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'containerId': containerId,
      'localAuthReference': ?localAuthReference,
      'sasToken': ?sasToken,
      'servicePrincipal': ?servicePrincipal == null ? null : servicePrincipal!.toMap(),
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory FluxConfigurationBlobStorage.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationBlobStorage(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      containerId: map['containerId'] as String,
      localAuthReference: map['localAuthReference'] == null ? null : map['localAuthReference'] as String,
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      servicePrincipal: map['servicePrincipal'] == null ? null : FluxConfigurationBlobStorageServicePrincipal.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>()),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as int,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
    );
  }
}

