// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionVolumeFrom {
  final bool? readOnly;
  final String? sourceContainer;

  /// Creates a new [TaskDefinitionVolumeFrom].
  /// [readOnly] Optional.
  /// [sourceContainer] Optional.
  TaskDefinitionVolumeFrom({this.readOnly, this.sourceContainer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'sourceContainer': ?sourceContainer,
    };
  }

  factory TaskDefinitionVolumeFrom.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeFrom(
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sourceContainer: map['sourceContainer'] == null
          ? null
          : map['sourceContainer'] as String,
    );
  }
}
