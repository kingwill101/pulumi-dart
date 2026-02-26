// ignore_for_file: unused_element, unnecessary_cast

class GetNotificationChannelFilter {
  /// Events to receive notifications for.
  final List<String> messageTypes;

  /// Severity levels to receive notifications for.
  final List<String> severities;

  GetNotificationChannelFilter({
    required this.messageTypes,
    required this.severities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageTypes'] = messageTypes;
    map['severities'] = severities;
    return map;
  }

  factory GetNotificationChannelFilter.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelFilter(
      messageTypes: (map['messageTypes'] as List).cast<String>(),
      severities: (map['severities'] as List).cast<String>(),
    );
  }
}
