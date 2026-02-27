// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../anomaly_subscription_subscriber/anomaly_subscription_subscriber.dart';
import '../anomaly_subscription_threshold_expression/anomaly_subscription_threshold_expression.dart';

/// The set of arguments for AnomalySubscription.
class AnomalySubscriptionArgs {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  final Input<String>? accountId;

  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  final Input<String> frequency;

  /// A list of cost anomaly monitors.
  final Input<List<String>> monitorArnLists;

  /// The name for the subscription.
  final Input<String>? name;

  /// A subscriber configuration. Multiple subscribers can be defined.
  final Input<List<AnomalySubscriptionSubscriber>> subscribers;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  final Input<AnomalySubscriptionThresholdExpression>? thresholdExpression;

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
    map['subscribers'] = Input.mapInputValue<
            List<AnomalySubscriptionSubscriber>, List<Map<String, dynamic>>>(
        subscribers,
        (value) => Input.encodeList<AnomalySubscriptionSubscriber,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final thresholdExpressionValue = thresholdExpression;
    if (thresholdExpressionValue != null) {
      map['thresholdExpression'] = Input.mapOptionalInputValue<
              AnomalySubscriptionThresholdExpression, Map<String, dynamic>>(
          thresholdExpressionValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnomalySubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      frequency: Input.asInput<String>(map['frequency']),
      monitorArnLists: Input.asInput<List<String>>(map['monitorArnLists']),
      name: Input.asOptionalInput<String>(map['name']),
      subscribers: Input.asInput<List<AnomalySubscriptionSubscriber>>(
          map['subscribers']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      thresholdExpression:
          Input.asOptionalInput<AnomalySubscriptionThresholdExpression>(
              map['thresholdExpression']),
    );
  }
}
