// ignore_for_file: unused_element, unnecessary_cast


class VolumeLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [VolumeLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  VolumeLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory VolumeLabel.fromMap(Map<String, dynamic> map) {
    return VolumeLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

