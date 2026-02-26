// ignore_for_file: unused_element, unnecessary_cast

class RecorderRecordingGroupRecordingStrategy {
  final String? useOnly;

  RecorderRecordingGroupRecordingStrategy({
    this.useOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final useOnlyValue = useOnly;
    if (useOnlyValue != null) {
      map['useOnly'] = useOnlyValue;
    }
    return map;
  }

  factory RecorderRecordingGroupRecordingStrategy.fromMap(
      Map<String, dynamic> map) {
    return RecorderRecordingGroupRecordingStrategy(
      useOnly: map['useOnly'] == null ? null : map['useOnly'] as String,
    );
  }
}
