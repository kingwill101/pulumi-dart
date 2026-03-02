// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupInitContainerVolumeMount {
  final pulumi.Input<String>? mountPath;
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [ContainerGroupInitContainerVolumeMount].
  /// [mountPath] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  ContainerGroupInitContainerVolumeMount({
    this.mountPath,
    this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'name': ?name,
      'readOnly': ?readOnly,
    };
  }

  factory ContainerGroupInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
    );
  }
}

