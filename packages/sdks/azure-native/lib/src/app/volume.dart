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
  const Volume({
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
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretVolumeItem>(guardedValue, (value) => SecretVolumeItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageName: (() { final guardedValue = map['storageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

