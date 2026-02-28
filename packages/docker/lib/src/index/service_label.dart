// ignore_for_file: unused_element, unnecessary_cast


class ServiceLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [ServiceLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ServiceLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ServiceLabel.fromMap(Map<String, dynamic> map) {
    return ServiceLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

