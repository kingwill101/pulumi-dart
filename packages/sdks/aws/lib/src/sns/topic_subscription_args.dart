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
    pulumi.Output<int>? confirmationTimeoutInMinutes,
    pulumi.Output<String>? deliveryPolicy,
    required pulumi.Output<String> endpoint,
    pulumi.Output<bool>? endpointAutoConfirms,
    pulumi.Output<String>? filterPolicy,
    pulumi.Output<String>? filterPolicyScope,
    required pulumi.Output<String> protocol,
    pulumi.Output<bool>? rawMessageDelivery,
    pulumi.Output<String>? redrivePolicy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replayPolicy,
    pulumi.Output<String>? subscriptionRoleArn,
    required pulumi.Output<String> topic,
  }) :
      confirmationTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(confirmationTimeoutInMinutes),
      deliveryPolicy = pulumi.Input.asOptionalInput<String>(deliveryPolicy),
      endpoint = pulumi.Input.asInput<String>(endpoint),
      endpointAutoConfirms = pulumi.Input.asOptionalInput<bool>(endpointAutoConfirms),
      filterPolicy = pulumi.Input.asOptionalInput<String>(filterPolicy),
      filterPolicyScope = pulumi.Input.asOptionalInput<String>(filterPolicyScope),
      protocol = pulumi.Input.asInput<String>(protocol),
      rawMessageDelivery = pulumi.Input.asOptionalInput<bool>(rawMessageDelivery),
      redrivePolicy = pulumi.Input.asOptionalInput<String>(redrivePolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      replayPolicy = pulumi.Input.asOptionalInput<String>(replayPolicy),
      subscriptionRoleArn = pulumi.Input.asOptionalInput<String>(subscriptionRoleArn),
      topic = pulumi.Input.asInput<String>(topic);

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
      confirmationTimeoutInMinutes: map['confirmationTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['confirmationTimeoutInMinutes'] as int),
      deliveryPolicy: map['deliveryPolicy'] == null ? null : pulumi.Output.create<String>(map['deliveryPolicy'] as String),
      endpoint: pulumi.Output.create<String>(map['endpoint'] as String),
      endpointAutoConfirms: map['endpointAutoConfirms'] == null ? null : pulumi.Output.create<bool>(map['endpointAutoConfirms'] as bool),
      filterPolicy: map['filterPolicy'] == null ? null : pulumi.Output.create<String>(map['filterPolicy'] as String),
      filterPolicyScope: map['filterPolicyScope'] == null ? null : pulumi.Output.create<String>(map['filterPolicyScope'] as String),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      rawMessageDelivery: map['rawMessageDelivery'] == null ? null : pulumi.Output.create<bool>(map['rawMessageDelivery'] as bool),
      redrivePolicy: map['redrivePolicy'] == null ? null : pulumi.Output.create<String>(map['redrivePolicy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replayPolicy: map['replayPolicy'] == null ? null : pulumi.Output.create<String>(map['replayPolicy'] as String),
      subscriptionRoleArn: map['subscriptionRoleArn'] == null ? null : pulumi.Output.create<String>(map['subscriptionRoleArn'] as String),
      topic: pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

