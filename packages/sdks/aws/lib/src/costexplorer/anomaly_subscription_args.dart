// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_subscriber.dart';
import 'anomaly_subscription_threshold_expression.dart';

/// {@template pulumi_costexplorer_anomaly_subscription_anomaly_subscription_args_doc}
/// The set of arguments for AnomalySubscription.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_anomaly_subscription_anomaly_subscription_args_doc}
class AnomalySubscriptionArgs {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  final pulumi.Input<String?>? accountId;
  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  final pulumi.Input<String> frequency;
  /// A list of cost anomaly monitors.
  final pulumi.Input<List<String>> monitorArnLists;
  /// The name for the subscription.
  final pulumi.Input<String?>? name;
  /// A subscriber configuration. Multiple subscribers can be defined.
  final pulumi.Input<List<AnomalySubscriptionSubscriber>> subscribers;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  final pulumi.Input<AnomalySubscriptionThresholdExpression?>? thresholdExpression;

  /// Creates a new [AnomalySubscriptionArgs].
  /// [accountId] The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  /// [frequency] The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  /// [monitorArnLists] A list of cost anomaly monitors.
  /// [name] The name for the subscription.
  /// [subscribers] A subscriber configuration. Multiple subscribers can be defined.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [thresholdExpression] An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  const AnomalySubscriptionArgs({
    this.accountId,
    required this.frequency,
    required this.monitorArnLists,
    this.name,
    required this.subscribers,
    this.tags,
    this.thresholdExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'frequency': frequency,
      'monitorArnLists': monitorArnLists,
      'name': ?name,
      'subscribers': pulumi.Input.mapInputValue<List<AnomalySubscriptionSubscriber>, List<Map<String, dynamic>>>(subscribers, (value) => pulumi.Input.encodeList<AnomalySubscriptionSubscriber, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'thresholdExpression': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpression, Map<String, dynamic>>(thresholdExpression, (value) => value.toMap()),
    };
  }

  factory AnomalySubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      monitorArnLists: pulumi.Input.fromValue((map['monitorArnLists'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribers: pulumi.Input.fromValue(pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(map['subscribers']!, (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      thresholdExpression: (() { final guardedValue = map['thresholdExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
