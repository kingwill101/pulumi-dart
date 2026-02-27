// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventSubscription.
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

  /// Map of resource tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  EventSubscriptionArgs({
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
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['eventCategories'] = eventCategories;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snsTopicArn'] = snsTopicArn;
    final sourceIdsValue = sourceIds;
    if (sourceIdsValue != null) {
      map['sourceIds'] = sourceIdsValue;
    }
    map['sourceType'] = sourceType;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs(
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      eventCategories:
          pulumi.Input.asInput<List<String>>(map['eventCategories']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snsTopicArn: pulumi.Input.asInput<String>(map['snsTopicArn']),
      sourceIds: pulumi.Input.asOptionalInput<List<String>>(map['sourceIds']),
      sourceType: pulumi.Input.asInput<String>(map['sourceType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
