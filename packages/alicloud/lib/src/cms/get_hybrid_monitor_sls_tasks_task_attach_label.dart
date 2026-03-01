// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskAttachLabel {
  /// The key of the tag.
  final String name;
  /// The value of the tag.
  final String value;

  /// Creates a new [GetHybridMonitorSlsTasksTaskAttachLabel].
  /// [name] The key of the tag.
  /// [value] The value of the tag.
  GetHybridMonitorSlsTasksTaskAttachLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetHybridMonitorSlsTasksTaskAttachLabel.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskAttachLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

