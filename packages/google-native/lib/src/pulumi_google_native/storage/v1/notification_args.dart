// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Notification.
class NotificationArgs {
  final pulumi.Input<String> bucket;

  /// An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  final pulumi.Input<Map<String, String>>? customAttributes;

  /// HTTP 1.1 Entity tag for this subscription notification.
  final pulumi.Input<String>? etag;

  /// If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  final pulumi.Input<List<String>>? eventTypes;

  /// The ID of the notification.
  final pulumi.Input<String>? id;

  /// The kind of item this is. For notifications, this is always storage#notification.
  final pulumi.Input<String>? kind;

  /// If present, only apply this notification configuration to object names that begin with this prefix.
  final pulumi.Input<String>? objectNamePrefix;

  /// The desired content of the Payload.
  final pulumi.Input<String>? payloadFormat;

  /// The canonical URL of this notification.
  final pulumi.Input<String>? selfLink;

  /// The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  final pulumi.Input<String>? topic;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  NotificationArgs({
    required this.bucket,
    this.customAttributes,
    this.etag,
    this.eventTypes,
    this.id,
    this.kind,
    this.objectNamePrefix,
    this.payloadFormat,
    this.selfLink,
    this.topic,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final customAttributesValue = customAttributes;
    if (customAttributesValue != null) {
      map['customAttributes'] = customAttributesValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final eventTypesValue = eventTypes;
    if (eventTypesValue != null) {
      map['eventTypes'] = eventTypesValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final objectNamePrefixValue = objectNamePrefix;
    if (objectNamePrefixValue != null) {
      map['objectNamePrefix'] = objectNamePrefixValue;
    }
    final payloadFormatValue = payloadFormat;
    if (payloadFormatValue != null) {
      map['payloadFormat'] = payloadFormatValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      customAttributes: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['customAttributes']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      eventTypes: pulumi.Input.asOptionalInput<List<String>>(map['eventTypes']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      objectNamePrefix:
          pulumi.Input.asOptionalInput<String>(map['objectNamePrefix']),
      payloadFormat: pulumi.Input.asOptionalInput<String>(map['payloadFormat']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      topic: pulumi.Input.asOptionalInput<String>(map['topic']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
