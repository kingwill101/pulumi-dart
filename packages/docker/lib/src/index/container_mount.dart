// ignore_for_file: unused_element, unnecessary_cast

import 'container_mount_bind_options.dart';
import 'container_mount_tmpfs_options.dart';
import 'container_mount_volume_options.dart';

class ContainerMount {
  /// Optional configuration for the bind type.
  final ContainerMountBindOptions? bindOptions;
  /// Whether the mount should be read-only.
  final bool? readOnly;
  /// Mount source (e.g. a volume name, a host path).
  final String? source;
  /// Container path
  final String target;
  /// Optional configuration for the tmpfs type.
  final ContainerMountTmpfsOptions? tmpfsOptions;
  /// The mount type
  final String type;
  /// Optional configuration for the volume type.
  final ContainerMountVolumeOptions? volumeOptions;

  /// Creates a new [ContainerMount].
  /// [bindOptions] Optional configuration for the bind type.
  /// [readOnly] Whether the mount should be read-only.
  /// [source] Mount source (e.g. a volume name, a host path).
  /// [target] Container path
  /// [tmpfsOptions] Optional configuration for the tmpfs type.
  /// [type] The mount type
  /// [volumeOptions] Optional configuration for the volume type.
  ContainerMount({
    this.bindOptions,
    this.readOnly,
    this.source,
    required this.target,
    this.tmpfsOptions,
    required this.type,
    this.volumeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindOptions': ?bindOptions == null ? null : bindOptions!.toMap(),
      'readOnly': ?readOnly,
      'source': ?source,
      'target': target,
      'tmpfsOptions': ?tmpfsOptions == null ? null : tmpfsOptions!.toMap(),
      'type': type,
      'volumeOptions': ?volumeOptions == null ? null : volumeOptions!.toMap(),
    };
  }

  factory ContainerMount.fromMap(Map<String, dynamic> map) {
    return ContainerMount(
      bindOptions: map['bindOptions'] == null ? null : ContainerMountBindOptions.fromMap((map['bindOptions'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] as String,
      tmpfsOptions: map['tmpfsOptions'] == null ? null : ContainerMountTmpfsOptions.fromMap((map['tmpfsOptions'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      volumeOptions: map['volumeOptions'] == null ? null : ContainerMountVolumeOptions.fromMap((map['volumeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

