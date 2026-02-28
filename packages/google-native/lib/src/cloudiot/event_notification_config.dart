// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for forwarding telemetry events.
class EventNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final String? pubsubTopicName;

  /// If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  final String? subfolderMatches;

  /// Creates a new [EventNotificationConfig].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  /// [subfolderMatches] If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  EventNotificationConfig({
    this.pubsubTopicName,
    this.subfolderMatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubTopicNameValue = pubsubTopicName;
    if (pubsubTopicNameValue != null) {
      map['pubsubTopicName'] = pubsubTopicNameValue;
    }
    final subfolderMatchesValue = subfolderMatches;
    if (subfolderMatchesValue != null) {
      map['subfolderMatches'] = subfolderMatchesValue;
    }
    return map;
  }

  factory EventNotificationConfig.fromMap(Map<String, dynamic> map) {
    return EventNotificationConfig(
      pubsubTopicName: map['pubsubTopicName'] == null
          ? null
          : map['pubsubTopicName'] as String,
      subfolderMatches: map['subfolderMatches'] == null
          ? null
          : map['subfolderMatches'] as String,
    );
  }
}
