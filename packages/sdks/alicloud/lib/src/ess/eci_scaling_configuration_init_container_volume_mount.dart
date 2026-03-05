// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationInitContainerVolumeMount {
  final pulumi.Input<String>? mountPath;
  final pulumi.Input<String>? mountPropagation;
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<String>? subPath;

  /// Creates a new [EciScalingConfigurationInitContainerVolumeMount].
  /// [mountPath] Optional.
  /// [mountPropagation] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  /// [subPath] Optional.
  EciScalingConfigurationInitContainerVolumeMount({
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

  factory EciScalingConfigurationInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainerVolumeMount(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountPropagation: (() { final guardedValue = map['mountPropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

