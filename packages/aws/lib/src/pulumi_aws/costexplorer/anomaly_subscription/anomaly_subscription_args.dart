// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../anomaly_subscription_subscriber/anomaly_subscription_subscriber.dart';
import '../anomaly_subscription_threshold_expression/anomaly_subscription_threshold_expression.dart';

/// The set of arguments for AnomalySubscription.
class AnomalySubscriptionArgs {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  final pulumi.Input<String>? accountId;

  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  final pulumi.Input<String> frequency;

  /// A list of cost anomaly monitors.
  final pulumi.Input<List<String>> monitorArnLists;

  /// The name for the subscription.
  final pulumi.Input<String>? name;

  /// A subscriber configuration. Multiple subscribers can be defined.
  final pulumi.Input<List<AnomalySubscriptionSubscriber>> subscribers;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  final pulumi.Input<AnomalySubscriptionThresholdExpression>?
      thresholdExpression;

  AnomalySubscriptionArgs({
    this.accountId,
    required this.frequency,
    required this.monitorArnLists,
    this.name,
    required this.subscribers,
    this.tags,
    this.thresholdExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['frequency'] = frequency;
    map['monitorArnLists'] = monitorArnLists;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['subscribers'] = pulumi.Input.mapInputValue<
            List<AnomalySubscriptionSubscriber>, List<Map<String, dynamic>>>(
        subscribers,
        (value) => pulumi.Input.encodeList<AnomalySubscriptionSubscriber,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final thresholdExpressionValue = thresholdExpression;
    if (thresholdExpressionValue != null) {
      map['thresholdExpression'] = pulumi.Input.mapOptionalInputValue<
              AnomalySubscriptionThresholdExpression, Map<String, dynamic>>(
          thresholdExpressionValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnomalySubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      frequency: pulumi.Input.asInput<String>(map['frequency']),
      monitorArnLists:
          pulumi.Input.asInput<List<String>>(map['monitorArnLists']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      subscribers: pulumi.Input.asInput<List<AnomalySubscriptionSubscriber>>(
          map['subscribers']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      thresholdExpression:
          pulumi.Input.asOptionalInput<AnomalySubscriptionThresholdExpression>(
              map['thresholdExpression']),
    );
  }
}
