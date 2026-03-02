// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bind_options_response.dart';
import 'tmpfs_options_response.dart';
import 'volume_options_response.dart';

/// Describes the volume configuration for the container
class VolumeDefinitionResponse {
  /// Bind Options of the mount
  final pulumi.Input<BindOptionsResponse>? bind;
  /// Consistency of the volume
  final pulumi.Input<String>? consistency;
  /// Indicate whether to mount volume as readOnly. Default value for this is false.
  final pulumi.Input<bool>? readOnly;
  /// Source of the mount. For bind mounts this is the host path.
  final pulumi.Input<String>? source;
  /// Target of the mount. For bind mounts this is the path in the container.
  final pulumi.Input<String>? target;
  /// tmpfs option of the mount
  final pulumi.Input<TmpfsOptionsResponse>? tmpfs;
  /// Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
  final pulumi.Input<String>? type;
  /// Volume Options of the mount
  final pulumi.Input<VolumeOptionsResponse>? volume;

  /// Creates a new [VolumeDefinitionResponse].
  /// [bind] Bind Options of the mount
  /// [consistency] Consistency of the volume
  /// [readOnly] Indicate whether to mount volume as readOnly. Default value for this is false.
  /// [source] Source of the mount. For bind mounts this is the host path.
  /// [target] Target of the mount. For bind mounts this is the path in the container.
  /// [tmpfs] tmpfs option of the mount
  /// [type] Type of Volume Definition. Possible Values: bind,volume,tmpfs,npipe
  /// [volume] Volume Options of the mount
  VolumeDefinitionResponse({
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
      'bind': ?pulumi.Input.mapOptionalInputValue<BindOptionsResponse, Map<String, dynamic>>(bind, (value) => value.toMap()),
      'consistency': ?consistency,
      'readOnly': ?readOnly,
      'source': ?source,
      'target': ?target,
      'tmpfs': ?pulumi.Input.mapOptionalInputValue<TmpfsOptionsResponse, Map<String, dynamic>>(tmpfs, (value) => value.toMap()),
      'type': ?type,
      'volume': ?pulumi.Input.mapOptionalInputValue<VolumeOptionsResponse, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory VolumeDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return VolumeDefinitionResponse(
      bind: map['bind'] == null ? null : (BindOptionsResponse.fromMap((map['bind'] as Map).cast<String, dynamic>())).input(),
      consistency: map['consistency'] == null ? null : (map['consistency'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      tmpfs: map['tmpfs'] == null ? null : (TmpfsOptionsResponse.fromMap((map['tmpfs'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      volume: map['volume'] == null ? null : (VolumeOptionsResponse.fromMap((map['volume'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

