// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_volume_item.dart';

/// Volume definitions for the Container App.
class Volume {
  /// Mount options used while mounting the Azure file share or NFS Azure file share. Must be a comma-separated string.
  final pulumi.Input<String>? mountOptions;
  /// Volume name.
  final pulumi.Input<String>? name;
  /// List of secrets to be added in volume. If no secrets are provided, all secrets in collection will be added to volume.
  final pulumi.Input<List<SecretVolumeItem>>? secrets;
  /// Name of storage resource. No need to provide for EmptyDir and Secret.
  final pulumi.Input<String>? storageName;
  /// Storage type for the volume. If not provided, use EmptyDir.
  final pulumi.Input<String>? storageType;

  /// Creates a new [Volume].
  /// [mountOptions] Mount options used while mounting the Azure file share or NFS Azure file share. Must be a comma-separated string.
  /// [name] Volume name.
  /// [secrets] List of secrets to be added in volume. If no secrets are provided, all secrets in collection will be added to volume.
  /// [storageName] Name of storage resource. No need to provide for EmptyDir and Secret.
  /// [storageType] Storage type for the volume. If not provided, use EmptyDir.
  Volume({
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
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<SecretVolumeItem>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<SecretVolumeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageName': ?storageName,
      'storageType': ?storageType,
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<SecretVolumeItem>(map['secrets'], (value) => SecretVolumeItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageName: map['storageName'] == null ? null : (map['storageName'] as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
    );
  }
}

