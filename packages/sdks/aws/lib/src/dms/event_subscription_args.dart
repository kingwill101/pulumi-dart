// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_event_subscription_event_subscription_args_doc}
/// The set of arguments for EventSubscription.
/// {@endtemplate}
/// {@macro pulumi_dms_event_subscription_event_subscription_args_doc}
class EventSubscriptionArgs {
  /// Whether the event subscription should be enabled.
  final pulumi.Input<bool>? enabled;
  /// List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  final pulumi.Input<List<String>> eventCategories;
  /// Name of event subscription.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// SNS topic arn to send events on.
  final pulumi.Input<String> snsTopicArn;
  /// Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  final pulumi.Input<List<String>>? sourceIds;
  /// Type of source for events. Valid values: `replication-instance` or `replication-task`
  final pulumi.Input<String> sourceType;
  /// Map of resource tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventSubscriptionArgs].
  /// [enabled] Whether the event subscription should be enabled.
  /// [eventCategories] List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  /// [name] Name of event subscription.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArn] SNS topic arn to send events on.
  /// [sourceIds] Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  /// [sourceType] Type of source for events. Valid values: `replication-instance` or `replication-task`
  /// [tags] Map of resource tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const EventSubscriptionArgs({
    this.enabled,
    required this.eventCategories,
    this.name,
    this.region,
    required this.snsTopicArn,
    this.sourceIds,
    required this.sourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'eventCategories': eventCategories,
      'name': ?name,
      'region': ?region,
      'snsTopicArn': snsTopicArn,
      'sourceIds': ?sourceIds,
      'sourceType': sourceType,
      'tags': ?tags,
    };
  }

  factory EventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventCategories: pulumi.Input.fromValue((map['eventCategories'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsTopicArn: pulumi.Input.fromValue(map['snsTopicArn'] as String),
      sourceIds: (() { final guardedValue = map['sourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
