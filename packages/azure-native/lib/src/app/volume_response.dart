// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_volume_item_response.dart';

/// Volume definitions for the Container App.
class VolumeResponse {
  /// Mount options used while mounting the Azure file share or NFS Azure file share. Must be a comma-separated string.
  final String? mountOptions;
  /// Volume name.
  final String? name;
  /// List of secrets to be added in volume. If no secrets are provided, all secrets in collection will be added to volume.
  final List<SecretVolumeItemResponse>? secrets;
  /// Name of storage resource. No need to provide for EmptyDir and Secret.
  final String? storageName;
  /// Storage type for the volume. If not provided, use EmptyDir.
  final String? storageType;

  /// Creates a new [VolumeResponse].
  /// [mountOptions] Mount options used while mounting the Azure file share or NFS Azure file share. Must be a comma-separated string.
  /// [name] Volume name.
  /// [secrets] List of secrets to be added in volume. If no secrets are provided, all secrets in collection will be added to volume.
  /// [storageName] Name of storage resource. No need to provide for EmptyDir and Secret.
  /// [storageType] Storage type for the volume. If not provided, use EmptyDir.
  VolumeResponse({
    this.mountOptions,
    this.name,
    this.secrets,
    this.storageName,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'name': ?name,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SecretVolumeItemResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'storageName': ?storageName,
      'storageType': ?storageType,
    };
  }

  factory VolumeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeResponse(
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SecretVolumeItemResponse>(map['secrets'], (value) => SecretVolumeItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageName: map['storageName'] == null ? null : map['storageName'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

