// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationContainerVolumeMount {
  final pulumi.Input<String>? mountPath;
  final pulumi.Input<String>? mountPropagation;
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<String>? subPath;

  /// Creates a new [EciScalingConfigurationContainerVolumeMount].
  /// [mountPath] Optional.
  /// [mountPropagation] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  /// [subPath] Optional.
  EciScalingConfigurationContainerVolumeMount({
    this.mountPath,
    this.mountPropagation,
    this.name,
    this.readOnly,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'mountPropagation': ?mountPropagation,
      'name': ?name,
      'readOnly': ?readOnly,
      'subPath': ?subPath,
    };
  }

  factory EciScalingConfigurationContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
      mountPropagation: map['mountPropagation'] == null ? null : (map['mountPropagation'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
    );
  }
}

