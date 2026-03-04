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
      mountPath: (() {
        final guardedValue = map['mountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
