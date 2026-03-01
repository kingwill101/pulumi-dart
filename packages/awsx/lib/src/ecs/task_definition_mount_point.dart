// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionMountPoint {
  final String? containerPath;
  final bool? readOnly;
  final String? sourceVolume;

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
      containerPath: map['containerPath'] == null
          ? null
          : map['containerPath'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sourceVolume: map['sourceVolume'] == null
          ? null
          : map['sourceVolume'] as String,
    );
  }
}
