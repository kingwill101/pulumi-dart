// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionVolumeFrom {
  final bool? readOnly;
  final String? sourceContainer;

  /// Creates a new [TaskDefinitionVolumeFrom].
  /// [readOnly] Optional.
  /// [sourceContainer] Optional.
  TaskDefinitionVolumeFrom({this.readOnly, this.sourceContainer});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final sourceContainerValue = sourceContainer;
    if (sourceContainerValue != null) {
      map['sourceContainer'] = sourceContainerValue;
    }
    return map;
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
