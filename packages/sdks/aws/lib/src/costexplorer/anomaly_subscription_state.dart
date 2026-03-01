// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_subscriber.dart';
import 'anomaly_subscription_threshold_expression.dart';

/// Input properties used for looking up and filtering AnomalySubscription resources.
class AnomalySubscriptionState {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  final pulumi.Input<String>? accountId;
  /// ARN of the anomaly subscription.
  final pulumi.Input<String>? arn;
  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  final pulumi.Input<String>? frequency;
  /// A list of cost anomaly monitors.
  final pulumi.Input<List<String>>? monitorArnLists;
  /// The name for the subscription.
  final pulumi.Input<String>? name;
  /// A subscriber configuration. Multiple subscribers can be defined.
  final pulumi.Input<List<AnomalySubscriptionSubscriber>>? subscribers;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  final pulumi.Input<AnomalySubscriptionThresholdExpression>? thresholdExpression;

  /// Creates a new [AnomalySubscriptionState].
  /// [accountId] The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  /// [arn] ARN of the anomaly subscription.
  /// [frequency] The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  /// [monitorArnLists] A list of cost anomaly monitors.
  /// [name] The name for the subscription.
  /// [subscribers] A subscriber configuration. Multiple subscribers can be defined.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [thresholdExpression] An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  AnomalySubscriptionState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? frequency,
    pulumi.Output<List<String>>? monitorArnLists,
    pulumi.Output<String>? name,
    pulumi.Output<List<AnomalySubscriptionSubscriber>>? subscribers,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AnomalySubscriptionThresholdExpression>? thresholdExpression,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      monitorArnLists = pulumi.Input.asOptionalInput<List<String>>(monitorArnLists),
      name = pulumi.Input.asOptionalInput<String>(name),
      subscribers = pulumi.Input.asOptionalInput<List<AnomalySubscriptionSubscriber>>(subscribers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      thresholdExpression = pulumi.Input.asOptionalInput<AnomalySubscriptionThresholdExpression>(thresholdExpression);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'frequency': ?frequency,
      'monitorArnLists': ?monitorArnLists,
      'name': ?name,
      'subscribers': ?pulumi.Input.mapOptionalInputValue<List<AnomalySubscriptionSubscriber>, List<Map<String, dynamic>>>(subscribers, (value) => pulumi.Input.encodeList<AnomalySubscriptionSubscriber, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'thresholdExpression': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpression, Map<String, dynamic>>(thresholdExpression, (value) => value.toMap()),
    };
  }

  factory AnomalySubscriptionState.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      monitorArnLists: map['monitorArnLists'] == null ? null : pulumi.Output.create<List<String>>((map['monitorArnLists'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subscribers: map['subscribers'] == null ? null : pulumi.Output.create<List<AnomalySubscriptionSubscriber>>(pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(map['subscribers'], (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      thresholdExpression: map['thresholdExpression'] == null ? null : pulumi.Output.create<AnomalySubscriptionThresholdExpression>(AnomalySubscriptionThresholdExpression.fromMap((map['thresholdExpression'] as Map).cast<String, dynamic>())),
    );
  }
}

