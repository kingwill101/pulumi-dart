// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerVolumeMount {
  final pulumi.Input<String>? mountPath;
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [ContainerGroupContainerVolumeMount].
  /// [mountPath] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  ContainerGroupContainerVolumeMount({
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

  factory ContainerGroupContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
    );
  }
}

