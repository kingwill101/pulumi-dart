// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventSubscription resources.
class EventSubscriptionState {
  /// Amazon Resource Name (ARN) of the Redshift event notification subscription
  final pulumi.Input<String>? arn;
  /// The AWS customer account associated with the Redshift event notification subscription
  final pulumi.Input<String>? customerAwsId;
  /// A boolean flag to enable/disable the subscription. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  final pulumi.Input<List<String>>? eventCategories;
  /// The name of the Redshift event subscription.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  final pulumi.Input<String>? severity;
  /// The ARN of the SNS topic to send events to.
  final pulumi.Input<String>? snsTopicArn;
  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a `source_type` must also be specified.
  final pulumi.Input<List<String>>? sourceIds;
  /// The type of source that will be generating the events. Valid options are `cluster`, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  final pulumi.Input<String>? sourceType;
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EventSubscriptionState].
  /// [arn] Amazon Resource Name (ARN) of the Redshift event notification subscription
  /// [customerAwsId] The AWS customer account associated with the Redshift event notification subscription
  /// [enabled] A boolean flag to enable/disable the subscription. Defaults to `true`.
  /// [eventCategories] A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  /// [name] The name of the Redshift event subscription.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [severity] The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  /// [snsTopicArn] The ARN of the SNS topic to send events to.
  /// [sourceIds] A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a `source_type` must also be specified.
  /// [sourceType] The type of source that will be generating the events. Valid options are `cluster`, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  /// [status] Optional.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EventSubscriptionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? customerAwsId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? eventCategories,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? severity,
    pulumi.Output<String>? snsTopicArn,
    pulumi.Output<List<String>>? sourceIds,
    pulumi.Output<String>? sourceType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customerAwsId = pulumi.Input.asOptionalInput<String>(customerAwsId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      eventCategories = pulumi.Input.asOptionalInput<List<String>>(eventCategories),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
      sourceIds = pulumi.Input.asOptionalInput<List<String>>(sourceIds),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customerAwsId': ?customerAwsId,
      'enabled': ?enabled,
      'eventCategories': ?eventCategories,
      'name': ?name,
      'region': ?region,
      'severity': ?severity,
      'snsTopicArn': ?snsTopicArn,
      'sourceIds': ?sourceIds,
      'sourceType': ?sourceType,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EventSubscriptionState.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customerAwsId: map['customerAwsId'] == null ? null : pulumi.Output.create<String>(map['customerAwsId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      eventCategories: map['eventCategories'] == null ? null : pulumi.Output.create<List<String>>((map['eventCategories'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      snsTopicArn: map['snsTopicArn'] == null ? null : pulumi.Output.create<String>(map['snsTopicArn'] as String),
      sourceIds: map['sourceIds'] == null ? null : pulumi.Output.create<List<String>>((map['sourceIds'] as List).cast<String>()),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

