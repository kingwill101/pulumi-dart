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
    this.arn,
    this.customerAwsId,
    this.enabled,
    this.eventCategories,
    this.name,
    this.region,
    this.severity,
    this.snsTopicArn,
    this.sourceIds,
    this.sourceType,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerAwsId: (() {
        final guardedValue = map['customerAwsId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      eventCategories: (() {
        final guardedValue = map['eventCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      severity: (() {
        final guardedValue = map['severity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snsTopicArn: (() {
        final guardedValue = map['snsTopicArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceIds: (() {
        final guardedValue = map['sourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
