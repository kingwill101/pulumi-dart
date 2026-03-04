// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sns_topic_subscription_topic_subscription_args_doc}
/// The set of arguments for TopicSubscription.
/// {@endtemplate}
/// {@macro pulumi_sns_topic_subscription_topic_subscription_args_doc}
class TopicSubscriptionArgs {
  /// Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is `1`.
  final pulumi.Input<int>? confirmationTimeoutInMinutes;

  /// JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html) for more details.
  final pulumi.Input<String>? deliveryPolicy;

  /// Endpoint to send data to. The contents vary with the protocol. See details below.
  final pulumi.Input<String> endpoint;

  /// Whether the endpoint is capable of [auto confirming subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is `false`.
  final pulumi.Input<bool>? endpointAutoConfirms;

  /// JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html) for more details.
  final pulumi.Input<String>? filterPolicy;

  /// Whether the `filter_policy` applies to `MessageAttributes` (default) or `MessageBody`.
  final pulumi.Input<String>? filterPolicyScope;

  /// Protocol to use. Valid values are: `sqs`, `sms`, `lambda`, `firehose`, and `application`. Protocols `email`, `email-json`, `http` and `https` are also valid but partially supported. See details below.
  final pulumi.Input<String> protocol;

  /// Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is `false`.
  final pulumi.Input<bool>? rawMessageDelivery;

  /// JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details.
  final pulumi.Input<String>? redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// JSON String with the archived message replay policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html) for more details.
  final pulumi.Input<String>? replayPolicy;

  /// ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html).
  final pulumi.Input<String>? subscriptionRoleArn;

  /// ARN of the SNS topic to subscribe to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> topic;

  /// Creates a new [TopicSubscriptionArgs].
  /// [confirmationTimeoutInMinutes] Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is `1`.
  /// [deliveryPolicy] JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html) for more details.
  /// [endpoint] Endpoint to send data to. The contents vary with the protocol. See details below.
  /// [endpointAutoConfirms] Whether the endpoint is capable of [auto confirming subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is `false`.
  /// [filterPolicy] JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html) for more details.
  /// [filterPolicyScope] Whether the `filter_policy` applies to `MessageAttributes` (default) or `MessageBody`.
  /// [protocol] Protocol to use. Valid values are: `sqs`, `sms`, `lambda`, `firehose`, and `application`. Protocols `email`, `email-json`, `http` and `https` are also valid but partially supported. See details below.
  /// [rawMessageDelivery] Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is `false`.
  /// [redrivePolicy] JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replayPolicy] JSON String with the archived message replay policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html) for more details.
  /// [subscriptionRoleArn] ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html).
  /// [topic] ARN of the SNS topic to subscribe to.
  TopicSubscriptionArgs({
    this.confirmationTimeoutInMinutes,
    this.deliveryPolicy,
    required this.endpoint,
    this.endpointAutoConfirms,
    this.filterPolicy,
    this.filterPolicyScope,
    required this.protocol,
    this.rawMessageDelivery,
    this.redrivePolicy,
    this.region,
    this.replayPolicy,
    this.subscriptionRoleArn,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confirmationTimeoutInMinutes': ?confirmationTimeoutInMinutes,
      'deliveryPolicy': ?deliveryPolicy,
      'endpoint': endpoint,
      'endpointAutoConfirms': ?endpointAutoConfirms,
      'filterPolicy': ?filterPolicy,
      'filterPolicyScope': ?filterPolicyScope,
      'protocol': protocol,
      'rawMessageDelivery': ?rawMessageDelivery,
      'redrivePolicy': ?redrivePolicy,
      'region': ?region,
      'replayPolicy': ?replayPolicy,
      'subscriptionRoleArn': ?subscriptionRoleArn,
      'topic': topic,
    };
  }

  factory TopicSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return TopicSubscriptionArgs(
      confirmationTimeoutInMinutes: (() {
        final guardedValue = map['confirmationTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deliveryPolicy: (() {
        final guardedValue = map['deliveryPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpointAutoConfirms: (() {
        final guardedValue = map['endpointAutoConfirms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filterPolicy: (() {
        final guardedValue = map['filterPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filterPolicyScope: (() {
        final guardedValue = map['filterPolicyScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      rawMessageDelivery: (() {
        final guardedValue = map['rawMessageDelivery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      redrivePolicy: (() {
        final guardedValue = map['redrivePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replayPolicy: (() {
        final guardedValue = map['replayPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionRoleArn: (() {
        final guardedValue = map['subscriptionRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
