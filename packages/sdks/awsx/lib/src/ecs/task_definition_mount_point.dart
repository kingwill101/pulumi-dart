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
      containerPath: map['containerPath'] == null ? null : (map['containerPath']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      sourceVolume: map['sourceVolume'] == null ? null : (map['sourceVolume']! as String).input(),
    );
  }
}

