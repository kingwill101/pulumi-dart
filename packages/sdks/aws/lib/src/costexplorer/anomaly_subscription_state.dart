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
  const AnomalySubscriptionState({
    this.accountId,
    this.arn,
    this.frequency,
    this.monitorArnLists,
    this.name,
    this.subscribers,
    this.tags,
    this.tagsAll,
    this.thresholdExpression,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorArnLists: (() { final guardedValue = map['monitorArnLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribers: (() { final guardedValue = map['subscribers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(guardedValue, (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      thresholdExpression: (() { final guardedValue = map['thresholdExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

