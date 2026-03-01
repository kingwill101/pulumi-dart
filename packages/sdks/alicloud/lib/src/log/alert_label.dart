// ignore_for_file: unused_element, unnecessary_cast


class AlertLabel {
  /// Labels's key for new alert.
  final String key;
  /// Labels's value for new alert.
  final String value;

  /// Creates a new [AlertLabel].
  /// [key] Labels's key for new alert.
  /// [value] Labels's value for new alert.
  AlertLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AlertLabel.fromMap(Map<String, dynamic> map) {
    return AlertLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

