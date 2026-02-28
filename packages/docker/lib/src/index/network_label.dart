// ignore_for_file: unused_element, unnecessary_cast


class NetworkLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [NetworkLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  NetworkLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory NetworkLabel.fromMap(Map<String, dynamic> map) {
    return NetworkLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

