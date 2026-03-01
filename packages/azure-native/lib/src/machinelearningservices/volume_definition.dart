// ignore_for_file: unused_element, unnecessary_cast

import 'bind_options.dart';
import 'tmpfs_options.dart';
import 'volume_options.dart';

/// Describes the volume configuration for the container
class VolumeDefinition {
  /// Bind Options of the mount
  final BindOptions? bind;
  /// Consistency of the volume
  final String? consistency;
  /// Indicate whether to mount volume as readOnly. Default value for this is false.
  final bool? readOnly;
  /// Source of the mount. For bind mounts this is the host path.
  final String? source;
  /// Target of the mount. For bind mounts this is the path in the container.
  final String? target;
  /// tmpfs option of the mount
  final TmpfsOptions? tmpfs;
  /// Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
  final String? type;
  /// Volume Options of the mount
  final VolumeOptions? volume;

  /// Creates a new [VolumeDefinition].
  /// [bind] Bind Options of the mount
  /// [consistency] Consistency of the volume
  /// [readOnly] Indicate whether to mount volume as readOnly. Default value for this is false.
  /// [source] Source of the mount. For bind mounts this is the host path.
  /// [target] Target of the mount. For bind mounts this is the path in the container.
  /// [tmpfs] tmpfs option of the mount
  /// [type] Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
  /// [volume] Volume Options of the mount
  VolumeDefinition({
    this.bind,
    this.consistency,
    this.readOnly,
    this.source,
    this.target,
    this.tmpfs,
    this.type,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bind': ?bind == null ? null : bind!.toMap(),
      'consistency': ?consistency,
      'readOnly': ?readOnly,
      'source': ?source,
      'target': ?target,
      'tmpfs': ?tmpfs == null ? null : tmpfs!.toMap(),
      'type': ?type,
      'volume': ?volume == null ? null : volume!.toMap(),
    };
  }

  factory VolumeDefinition.fromMap(Map<String, dynamic> map) {
    return VolumeDefinition(
      bind: map['bind'] == null ? null : BindOptions.fromMap((map['bind'] as Map).cast<String, dynamic>()),
      consistency: map['consistency'] == null ? null : map['consistency'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      tmpfs: map['tmpfs'] == null ? null : TmpfsOptions.fromMap((map['tmpfs'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      volume: map['volume'] == null ? null : VolumeOptions.fromMap((map['volume'] as Map).cast<String, dynamic>()),
    );
  }
}

