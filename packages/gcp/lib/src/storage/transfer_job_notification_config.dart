// ignore_for_file: unused_element, unnecessary_cast

class TransferJobNotificationConfig {
  /// Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are "TRANSFER_OPERATION_SUCCESS", "TRANSFER_OPERATION_FAILED", "TRANSFER_OPERATION_ABORTED".
  final List<String>? eventTypes;

  /// The desired format of the notification message payloads. One of "NONE" or "JSON".
  final String payloadFormat;

  /// The Topic.name of the Pub/Sub topic to which to publish notifications. Must be of the format: projects/{project}/topics/{topic}. Not matching this format results in an INVALID_ARGUMENT error.
  final String pubsubTopic;

  /// Creates a new [TransferJobNotificationConfig].
  /// [eventTypes] Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are "TRANSFER_OPERATION_SUCCESS", "TRANSFER_OPERATION_FAILED", "TRANSFER_OPERATION_ABORTED".
  /// [payloadFormat] The desired format of the notification message payloads. One of "NONE" or "JSON".
  /// [pubsubTopic] The Topic.name of the Pub/Sub topic to which to publish notifications. Must be of the format: projects/{project}/topics/{topic}. Not matching this format results in an INVALID_ARGUMENT error.
  TransferJobNotificationConfig({
    this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventTypesValue = eventTypes;
    if (eventTypesValue != null) {
      map['eventTypes'] = eventTypesValue;
    }
    map['payloadFormat'] = payloadFormat;
    map['pubsubTopic'] = pubsubTopic;
    return map;
  }

  factory TransferJobNotificationConfig.fromMap(Map<String, dynamic> map) {
    return TransferJobNotificationConfig(
      eventTypes: map['eventTypes'] == null
          ? null
          : (map['eventTypes'] as List).cast<String>(),
      payloadFormat: map['payloadFormat'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
    );
  }
}
