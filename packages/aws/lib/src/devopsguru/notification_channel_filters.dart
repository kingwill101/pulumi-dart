// ignore_for_file: unused_element, unnecessary_cast


class NotificationChannelFilters {
  /// Events to receive notifications for. Valid values are `NEW_INSIGHT`, `CLOSED_INSIGHT`, `NEW_ASSOCIATION`, `SEVERITY_UPGRADED`, and `NEW_RECOMMENDATION`.
  final List<String>? messageTypes;
  /// Severity levels to receive notifications for. Valid values are `LOW`, `MEDIUM`, and `HIGH`.
  final List<String>? severities;

  /// Creates a new [NotificationChannelFilters].
  /// [messageTypes] Events to receive notifications for. Valid values are `NEW_INSIGHT`, `CLOSED_INSIGHT`, `NEW_ASSOCIATION`, `SEVERITY_UPGRADED`, and `NEW_RECOMMENDATION`.
  /// [severities] Severity levels to receive notifications for. Valid values are `LOW`, `MEDIUM`, and `HIGH`.
  NotificationChannelFilters({
    this.messageTypes,
    this.severities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageTypes': ?messageTypes,
      'severities': ?severities,
    };
  }

  factory NotificationChannelFilters.fromMap(Map<String, dynamic> map) {
    return NotificationChannelFilters(
      messageTypes: map['messageTypes'] == null ? null : (map['messageTypes'] as List).cast<String>(),
      severities: map['severities'] == null ? null : (map['severities'] as List).cast<String>(),
    );
  }
}

