// ignore_for_file: unused_element, unnecessary_cast


class NotificationChannelProperty {
  /// Notification property display key.
  final String? displayValue;
  /// Notification property key.
  final String key;
  /// Notification property label.
  final String? label;
  /// Notification property value.
  final String value;

  /// Creates a new [NotificationChannelProperty].
  /// [displayValue] Notification property display key.
  /// [key] Notification property key.
  /// [label] Notification property label.
  /// [value] Notification property value.
  NotificationChannelProperty({
    this.displayValue,
    required this.key,
    this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayValue': ?displayValue,
      'key': key,
      'label': ?label,
      'value': value,
    };
  }

  factory NotificationChannelProperty.fromMap(Map<String, dynamic> map) {
    return NotificationChannelProperty(
      displayValue: map['displayValue'] == null ? null : map['displayValue'] as String,
      key: map['key'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      value: map['value'] as String,
    );
  }
}

