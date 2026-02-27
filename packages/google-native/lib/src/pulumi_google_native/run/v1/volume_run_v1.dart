// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_volume_source.dart';
import 'empty_dir_volume_source.dart';
import 'secret_volume_source.dart';

/// Volume represents a named volume in a container.
class VolumeRunV1 {
  /// Not supported in Cloud Run.
  final ConfigMapVolumeSource? configMap;

  /// Ephemeral storage used as a shared volume.
  final EmptyDirVolumeSource? emptyDir;

  /// Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  final String? name;

  /// The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  final SecretVolumeSource? secret;

  VolumeRunV1({
    this.configMap,
    this.emptyDir,
    this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configMapValue = configMap;
    if (configMapValue != null) {
      map['configMap'] = configMapValue.toMap();
    }
    final emptyDirValue = emptyDir;
    if (emptyDirValue != null) {
      map['emptyDir'] = emptyDirValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue.toMap();
    }
    return map;
  }

  factory VolumeRunV1.fromMap(Map<String, dynamic> map) {
    return VolumeRunV1(
      configMap: map['configMap'] == null
          ? null
          : ConfigMapVolumeSource.fromMap(
              (map['configMap'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null
          ? null
          : EmptyDirVolumeSource.fromMap(
              (map['emptyDir'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      secret: map['secret'] == null
          ? null
          : SecretVolumeSource.fromMap(
              (map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}
