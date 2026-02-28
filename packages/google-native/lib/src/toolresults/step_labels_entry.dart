// ignore_for_file: unused_element, unnecessary_cast

class StepLabelsEntry {
  final String? key;
  final String? value;

  /// Creates a new [StepLabelsEntry].
  /// [key] Optional.
  /// [value] Optional.
  StepLabelsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory StepLabelsEntry.fromMap(Map<String, dynamic> map) {
    return StepLabelsEntry(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
