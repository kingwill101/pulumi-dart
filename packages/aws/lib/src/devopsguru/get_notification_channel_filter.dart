// ignore_for_file: unused_element, unnecessary_cast


class GetNotificationChannelFilter {
  /// Events to receive notifications for.
  final List<String> messageTypes;
  /// Severity levels to receive notifications for.
  final List<String> severities;

  /// Creates a new [GetNotificationChannelFilter].
  /// [messageTypes] Events to receive notifications for.
  /// [severities] Severity levels to receive notifications for.
  GetNotificationChannelFilter({
    required this.messageTypes,
    required this.severities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageTypes': messageTypes,
      'severities': severities,
    };
  }

  factory GetNotificationChannelFilter.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelFilter(
      messageTypes: (map['messageTypes'] as List).cast<String>(),
      severities: (map['severities'] as List).cast<String>(),
    );
  }
}

