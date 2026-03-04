// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionMountPoint {
  final pulumi.Input<String>? containerPath;
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<String>? sourceVolume;

  /// Creates a new [TaskDefinitionMountPoint].
  /// [containerPath] Optional.
  /// [readOnly] Optional.
  /// [sourceVolume] Optional.
  TaskDefinitionMountPoint({
    this.containerPath,
    this.readOnly,
    this.sourceVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'readOnly': ?readOnly,
      'sourceVolume': ?sourceVolume,
    };
  }

  factory TaskDefinitionMountPoint.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionMountPoint(
      containerPath: (() {
        final guardedValue = map['containerPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceVolume: (() {
        final guardedValue = map['sourceVolume'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
