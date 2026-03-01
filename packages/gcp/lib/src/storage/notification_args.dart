// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_notification_notification_args_doc}
/// The set of arguments for Notification.
/// {@endtemplate}
/// {@macro pulumi_storage_notification_notification_args_doc}
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

  /// Creates a new [NotificationArgs].
  /// [bucket] The name of the bucket.
  /// [customAttributes] A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  /// [eventTypes] List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  /// [objectNamePrefix] Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  /// [payloadFormat] The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  /// [topic] The Cloud PubSub topic to which this subscription publishes. Expects either the
  NotificationArgs({
    required String bucket,
    Map<String, String>? customAttributes,
    List<String>? eventTypes,
    String? objectNamePrefix,
    required String payloadFormat,
    required String topic,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       customAttributes = pulumi.Input.asOptionalInput<Map<String, String>>(
         customAttributes,
       ),
       eventTypes = pulumi.Input.asOptionalInput<List<String>>(eventTypes),
       objectNamePrefix = pulumi.Input.asOptionalInput<String>(
         objectNamePrefix,
       ),
       payloadFormat = pulumi.Input.asInput<String>(payloadFormat),
       topic = pulumi.Input.asInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'customAttributes': ?customAttributes,
      'eventTypes': ?eventTypes,
      'objectNamePrefix': ?objectNamePrefix,
      'payloadFormat': payloadFormat,
      'topic': topic,
    };
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      bucket: map['bucket'] as String,
      customAttributes: map['customAttributes'] == null
          ? null
          : (map['customAttributes'] as Map).cast<String, String>(),
      eventTypes: map['eventTypes'] == null
          ? null
          : (map['eventTypes'] as List).cast<String>(),
      objectNamePrefix: map['objectNamePrefix'] == null
          ? null
          : map['objectNamePrefix'] as String,
      payloadFormat: map['payloadFormat'] as String,
      topic: map['topic'] as String,
    );
  }
}
