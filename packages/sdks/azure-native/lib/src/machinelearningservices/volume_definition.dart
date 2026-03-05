// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bind_options.dart';
import 'tmpfs_options.dart';
import 'volume_options.dart';

/// Describes the volume configuration for the container
class VolumeDefinition {
  /// Bind Options of the mount
  final pulumi.Input<BindOptions>? bind;
  /// Consistency of the volume
  final pulumi.Input<String>? consistency;
  /// Indicate whether to mount volume as readOnly. Default value for this is false.
  final pulumi.Input<bool>? readOnly;
  /// Source of the mount. For bind mounts this is the host path.
  final pulumi.Input<String>? source;
  /// Target of the mount. For bind mounts this is the path in the container.
  final pulumi.Input<String>? target;
  /// tmpfs option of the mount
  final pulumi.Input<TmpfsOptions>? tmpfs;
  /// Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
  final pulumi.Input<String>? type;
  /// Volume Options of the mount
  final pulumi.Input<VolumeOptions>? volume;

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
      'bind': ?pulumi.Input.mapOptionalInputValue<BindOptions, Map<String, dynamic>>(bind, (value) => value.toMap()),
      'consistency': ?consistency,
      'readOnly': ?readOnly,
      'source': ?source,
      'target': ?target,
      'tmpfs': ?pulumi.Input.mapOptionalInputValue<TmpfsOptions, Map<String, dynamic>>(tmpfs, (value) => value.toMap()),
      'type': ?type,
      'volume': ?pulumi.Input.mapOptionalInputValue<VolumeOptions, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory VolumeDefinition.fromMap(Map<String, dynamic> map) {
    return VolumeDefinition(
      bind: (() { final guardedValue = map['bind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BindOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consistency: (() { final guardedValue = map['consistency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tmpfs: (() { final guardedValue = map['tmpfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TmpfsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volume: (() { final guardedValue = map['volume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

