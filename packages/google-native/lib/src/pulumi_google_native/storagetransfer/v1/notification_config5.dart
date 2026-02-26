// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'notification_config_event_types_item.dart';
import 'notification_config_payload_format.dart';

/// Specification to configure notifications published to Pub/Sub. Notifications are published to the customer-provided topic using the following `PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the project_id of the `TransferOperation` * `"transferJobName"`: the transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the name of the `TransferOperation` The `PubsubMessage.data` contains a TransferOperation resource formatted according to the specified `PayloadFormat`.
class NotificationConfig5 {
  /// Event types for which a notification is desired. If empty, send notifications for all event types.
  final List<NotificationConfigEventTypesItem>? eventTypes;

  /// The desired format of the notification message payloads.
  final NotificationConfigPayloadFormat payloadFormat;

  /// The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.
  final String pubsubTopic;

  NotificationConfig5({
    this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventTypesValue = eventTypes;
    if (eventTypesValue != null) {
      map['eventTypes'] =
          Input.encodeList<NotificationConfigEventTypesItem, String>(
              eventTypesValue, (value) => value.value);
    }
    map['payloadFormat'] = payloadFormat.value;
    map['pubsubTopic'] = pubsubTopic;
    return map;
  }

  factory NotificationConfig5.fromMap(Map<String, dynamic> map) {
    return NotificationConfig5(
      eventTypes: map['eventTypes'] == null
          ? null
          : Input.decodeList<NotificationConfigEventTypesItem>(
              map['eventTypes'],
              (value) =>
                  NotificationConfigEventTypesItem.fromValue(value as String)),
      payloadFormat: NotificationConfigPayloadFormat.fromValue(
          map['payloadFormat'] as String),
      pubsubTopic: map['pubsubTopic'] as String,
    );
  }
}
