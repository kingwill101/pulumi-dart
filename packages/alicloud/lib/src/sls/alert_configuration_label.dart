// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationLabel {
  /// Field name.
  final String? key;
  /// Field value.
  final String? value;

  /// Creates a new [AlertConfigurationLabel].
  /// [key] Field name.
  /// [value] Field value.
  AlertConfigurationLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AlertConfigurationLabel.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

