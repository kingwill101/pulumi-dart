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
  final String cloudWitnessContainerName;
  /// The Cloud Witness Storage account name.
  final String cloudWitnessStorageAccountName;
  /// The Azure service endpoint of the cloud witness storage account.
  final String cloudWitnessStorageEndpoint;
  /// Cluster Witness Type
  final String clusterWitnessType;
  /// Device secrets, will be returned only with ODataFilter $expand=deviceSecrets
  final Map<String, SecretResponse> deviceSecrets;
  /// The public part of the encryption certificate. Client uses this to encrypt any secret.
  final String? encryptionKey;
  /// The digital signature of encrypted certificate.
  final String? encryptionKeyThumbprint;
  /// The witness location of file share.
  final String fileShareWitnessLocation;
  /// The username of file share.
  final String fileShareWitnessUsername;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// Key vault sync status
  final String? keyVaultSyncStatus;
  /// The object name.
  final String name;
  /// The Resource ID of the Resource.
  final String resourceKey;
  /// Metadata pertaining to creation and last modification of DataBoxEdgeDevice
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

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
  GetDeviceExtendedInformationResult({
    this.channelIntegrityKeyName,
    this.channelIntegrityKeyVersion,
    this.clientSecretStoreId,
    this.clientSecretStoreUrl,
    required this.cloudWitnessContainerName,
    required this.cloudWitnessStorageAccountName,
    required this.cloudWitnessStorageEndpoint,
    required this.clusterWitnessType,
    required this.deviceSecrets,
    this.encryptionKey,
    this.encryptionKeyThumbprint,
    required this.fileShareWitnessLocation,
    required this.fileShareWitnessUsername,
    required this.id,
    this.keyVaultSyncStatus,
    required this.name,
    required this.resourceKey,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelIntegrityKeyName': ?channelIntegrityKeyName,
      'channelIntegrityKeyVersion': ?channelIntegrityKeyVersion,
      'clientSecretStoreId': ?clientSecretStoreId,
      'clientSecretStoreUrl': ?clientSecretStoreUrl,
      'cloudWitnessContainerName': cloudWitnessContainerName,
      'cloudWitnessStorageAccountName': cloudWitnessStorageAccountName,
      'cloudWitnessStorageEndpoint': cloudWitnessStorageEndpoint,
      'clusterWitnessType': clusterWitnessType,
      'deviceSecrets': pulumi.Input.encodeMapValues<SecretResponse, Map<String, dynamic>>(deviceSecrets, (value) => value.toMap()),
      'encryptionKey': ?encryptionKey,
      'encryptionKeyThumbprint': ?encryptionKeyThumbprint,
      'fileShareWitnessLocation': fileShareWitnessLocation,
      'fileShareWitnessUsername': fileShareWitnessUsername,
      'id': id,
      'keyVaultSyncStatus': ?keyVaultSyncStatus,
      'name': name,
      'resourceKey': resourceKey,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDeviceExtendedInformationResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceExtendedInformationResult(
      channelIntegrityKeyName: (() { final guardedValue = map['channelIntegrityKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelIntegrityKeyVersion: (() { final guardedValue = map['channelIntegrityKeyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecretStoreId: (() { final guardedValue = map['clientSecretStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecretStoreUrl: (() { final guardedValue = map['clientSecretStoreUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudWitnessContainerName: map['cloudWitnessContainerName'] as String,
      cloudWitnessStorageAccountName: map['cloudWitnessStorageAccountName'] as String,
      cloudWitnessStorageEndpoint: map['cloudWitnessStorageEndpoint'] as String,
      clusterWitnessType: map['clusterWitnessType'] as String,
      deviceSecrets: pulumi.Input.decodeMapValues<SecretResponse>(map['deviceSecrets']!, (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionKeyThumbprint: (() { final guardedValue = map['encryptionKeyThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileShareWitnessLocation: map['fileShareWitnessLocation'] as String,
      fileShareWitnessUsername: map['fileShareWitnessUsername'] as String,
      id: map['id'] as String,
      keyVaultSyncStatus: (() { final guardedValue = map['keyVaultSyncStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      resourceKey: map['resourceKey'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

