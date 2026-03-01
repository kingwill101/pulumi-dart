// ignore_for_file: unused_element, unnecessary_cast


class NotificationDestinationAuthCustomHeader {
  /// The notification property key.
  final String key;
  /// The notification property value.
  final String value;

  /// Creates a new [NotificationDestinationAuthCustomHeader].
  /// [key] The notification property key.
  /// [value] The notification property value.
  NotificationDestinationAuthCustomHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory NotificationDestinationAuthCustomHeader.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationAuthCustomHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

