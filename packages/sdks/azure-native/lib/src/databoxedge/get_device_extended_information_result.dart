// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeviceExtendedInformation.
class GetDeviceExtendedInformationResult {
  /// The name of Channel Integrity Key stored in the Client Key Vault
  final String? channelIntegrityKeyName;
  /// The version of Channel Integrity Key stored in the Client Key Vault
  final String? channelIntegrityKeyVersion;
  /// The Key Vault ARM Id for client secrets
  final String? clientSecretStoreId;
  /// The url to access the Client Key Vault
  final String? clientSecretStoreUrl;
  /// The Container for cloud witness in the storage account.
  final String? cloudWitnessContainerName;
  /// The Cloud Witness Storage account name.
  final String? cloudWitnessStorageAccountName;
  /// The Azure service endpoint of the cloud witness storage account.
  final String? cloudWitnessStorageEndpoint;
  /// Cluster Witness Type
  final String? clusterWitnessType;
  /// Device secrets, will be returned only with ODataFilter $expand=deviceSecrets
  final Map<String, SecretResponse>? deviceSecrets;
  /// The public part of the encryption certificate. Client uses this to encrypt any secret.
  final String? encryptionKey;
  /// The digital signature of encrypted certificate.
  final String? encryptionKeyThumbprint;
  /// The witness location of file share.
  final String? fileShareWitnessLocation;
  /// The username of file share.
  final String? fileShareWitnessUsername;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Key vault sync status
  final String? keyVaultSyncStatus;
  /// The object name.
  final String? name;
  /// The Resource ID of the Resource.
  final String? resourceKey;
  /// Metadata pertaining to creation and last modification of DataBoxEdgeDevice
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetDeviceExtendedInformationResult].
  /// [channelIntegrityKeyName] The name of Channel Integrity Key stored in the Client Key Vault
  /// [channelIntegrityKeyVersion] The version of Channel Integrity Key stored in the Client Key Vault
  /// [clientSecretStoreId] The Key Vault ARM Id for client secrets
  /// [clientSecretStoreUrl] The url to access the Client Key Vault
  /// [cloudWitnessContainerName] The Container for cloud witness in the storage account.
  /// [cloudWitnessStorageAccountName] The Cloud Witness Storage account name.
  /// [cloudWitnessStorageEndpoint] The Azure service endpoint of the cloud witness storage account.
  /// [clusterWitnessType] Cluster Witness Type
  /// [deviceSecrets] Device secrets, will be returned only with ODataFilter $expand=deviceSecrets
  /// [encryptionKey] The public part of the encryption certificate. Client uses this to encrypt any secret.
  /// [encryptionKeyThumbprint] The digital signature of encrypted certificate.
  /// [fileShareWitnessLocation] The witness location of file share.
  /// [fileShareWitnessUsername] The username of file share.
  /// [id] The path ID that uniquely identifies the object.
  /// [keyVaultSyncStatus] Key vault sync status
  /// [name] The object name.
  /// [resourceKey] The Resource ID of the Resource.
  /// [systemData] Metadata pertaining to creation and last modification of DataBoxEdgeDevice
  /// [type] The hierarchical type of the object.
  const GetDeviceExtendedInformationResult({
    this.channelIntegrityKeyName,
    this.channelIntegrityKeyVersion,
    this.clientSecretStoreId,
    this.clientSecretStoreUrl,
    this.cloudWitnessContainerName,
    this.cloudWitnessStorageAccountName,
    this.cloudWitnessStorageEndpoint,
    this.clusterWitnessType,
    this.deviceSecrets,
    this.encryptionKey,
    this.encryptionKeyThumbprint,
    this.fileShareWitnessLocation,
    this.fileShareWitnessUsername,
    this.id,
    this.keyVaultSyncStatus,
    this.name,
    this.resourceKey,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelIntegrityKeyName': ?channelIntegrityKeyName,
      'channelIntegrityKeyVersion': ?channelIntegrityKeyVersion,
      'clientSecretStoreId': ?clientSecretStoreId,
      'clientSecretStoreUrl': ?clientSecretStoreUrl,
      'cloudWitnessContainerName': ?cloudWitnessContainerName,
      'cloudWitnessStorageAccountName': ?cloudWitnessStorageAccountName,
      'cloudWitnessStorageEndpoint': ?cloudWitnessStorageEndpoint,
      'clusterWitnessType': ?clusterWitnessType,
      'deviceSecrets': ?(() { final guardedValue = deviceSecrets; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<SecretResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionKey': ?encryptionKey,
      'encryptionKeyThumbprint': ?encryptionKeyThumbprint,
      'fileShareWitnessLocation': ?fileShareWitnessLocation,
      'fileShareWitnessUsername': ?fileShareWitnessUsername,
      'id': ?id,
      'keyVaultSyncStatus': ?keyVaultSyncStatus,
      'name': ?name,
      'resourceKey': ?resourceKey,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDeviceExtendedInformationResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceExtendedInformationResult(
      channelIntegrityKeyName: (() { final guardedValue = map['channelIntegrityKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelIntegrityKeyVersion: (() { final guardedValue = map['channelIntegrityKeyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecretStoreId: (() { final guardedValue = map['clientSecretStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecretStoreUrl: (() { final guardedValue = map['clientSecretStoreUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudWitnessContainerName: (() { final guardedValue = map['cloudWitnessContainerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudWitnessStorageAccountName: (() { final guardedValue = map['cloudWitnessStorageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudWitnessStorageEndpoint: (() { final guardedValue = map['cloudWitnessStorageEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterWitnessType: (() { final guardedValue = map['clusterWitnessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceSecrets: (() { final guardedValue = map['deviceSecrets']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<SecretResponse>(guardedValue, (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionKeyThumbprint: (() { final guardedValue = map['encryptionKeyThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileShareWitnessLocation: (() { final guardedValue = map['fileShareWitnessLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileShareWitnessUsername: (() { final guardedValue = map['fileShareWitnessUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSyncStatus: (() { final guardedValue = map['keyVaultSyncStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceKey: (() { final guardedValue = map['resourceKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
