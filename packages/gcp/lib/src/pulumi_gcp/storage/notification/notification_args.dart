// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Notification.
class NotificationArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;

  /// A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  final pulumi.Input<Map<String, String>>? customAttributes;

  /// List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  final pulumi.Input<List<String>>? eventTypes;

  /// Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  final pulumi.Input<String>? objectNamePrefix;

  /// The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  final pulumi.Input<String> payloadFormat;

  /// The Cloud PubSub topic to which this subscription publishes. Expects either the
  /// topic name, assumed to belong to the default GCP provider project, or the project-level name,
  /// i.e. `projects/my-gcp-project/topics/my-topic` or `my-topic`. If the project is not set in the provider,
  /// you will need to use the project-level name.
  ///
  /// - - -
  final pulumi.Input<String> topic;

  NotificationArgs({
    required this.bucket,
    this.customAttributes,
    this.eventTypes,
    this.objectNamePrefix,
    required this.payloadFormat,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final customAttributesValue = customAttributes;
    if (customAttributesValue != null) {
      map['customAttributes'] = customAttributesValue;
    }
    final eventTypesValue = eventTypes;
    if (eventTypesValue != null) {
      map['eventTypes'] = eventTypesValue;
    }
    final objectNamePrefixValue = objectNamePrefix;
    if (objectNamePrefixValue != null) {
      map['objectNamePrefix'] = objectNamePrefixValue;
    }
    map['payloadFormat'] = payloadFormat;
    map['topic'] = topic;
    return map;
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      customAttributes: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['customAttributes']),
      eventTypes: pulumi.Input.asOptionalInput<List<String>>(map['eventTypes']),
      objectNamePrefix:
          pulumi.Input.asOptionalInput<String>(map['objectNamePrefix']),
      payloadFormat: pulumi.Input.asInput<String>(map['payloadFormat']),
      topic: pulumi.Input.asInput<String>(map['topic']),
    );
  }
}
