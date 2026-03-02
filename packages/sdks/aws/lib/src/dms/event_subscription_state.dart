// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventSubscription resources.
class EventSubscriptionState {
  /// Amazon Resource Name (ARN) of the DMS Event Subscription.
  final pulumi.Input<String>? arn;
  /// Whether the event subscription should be enabled.
  final pulumi.Input<bool>? enabled;
  /// List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  final pulumi.Input<List<String>>? eventCategories;
  /// Name of event subscription.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// SNS topic arn to send events on.
  final pulumi.Input<String>? snsTopicArn;
  /// Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  final pulumi.Input<List<String>>? sourceIds;
  /// Type of source for events. Valid values: `replication-instance` or `replication-task`
  final pulumi.Input<String>? sourceType;
  /// Map of resource tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EventSubscriptionState].
  /// [arn] Amazon Resource Name (ARN) of the DMS Event Subscription.
  /// [enabled] Whether the event subscription should be enabled.
  /// [eventCategories] List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  /// [name] Name of event subscription.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArn] SNS topic arn to send events on.
  /// [sourceIds] Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  /// [sourceType] Type of source for events. Valid values: `replication-instance` or `replication-task`
  /// [tags] Map of resource tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EventSubscriptionState({
    this.arn,
    this.enabled,
    this.eventCategories,
    this.name,
    this.region,
    this.snsTopicArn,
    this.sourceIds,
    this.sourceType,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'enabled': ?enabled,
      'eventCategories': ?eventCategories,
      'name': ?name,
      'region': ?region,
      'snsTopicArn': ?snsTopicArn,
      'sourceIds': ?sourceIds,
      'sourceType': ?sourceType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EventSubscriptionState.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      eventCategories: map['eventCategories'] == null ? null : (((map['eventCategories'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : ((map['snsTopicArn'] as String).input()).input(),
      sourceIds: map['sourceIds'] == null ? null : (((map['sourceIds'] as List).cast<String>()).input()).input(),
      sourceType: map['sourceType'] == null ? null : ((map['sourceType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

