// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TopicSubscription.
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
    final map = <String, dynamic>{};
    final confirmationTimeoutInMinutesValue = confirmationTimeoutInMinutes;
    if (confirmationTimeoutInMinutesValue != null) {
      map['confirmationTimeoutInMinutes'] = confirmationTimeoutInMinutesValue;
    }
    final deliveryPolicyValue = deliveryPolicy;
    if (deliveryPolicyValue != null) {
      map['deliveryPolicy'] = deliveryPolicyValue;
    }
    map['endpoint'] = endpoint;
    final endpointAutoConfirmsValue = endpointAutoConfirms;
    if (endpointAutoConfirmsValue != null) {
      map['endpointAutoConfirms'] = endpointAutoConfirmsValue;
    }
    final filterPolicyValue = filterPolicy;
    if (filterPolicyValue != null) {
      map['filterPolicy'] = filterPolicyValue;
    }
    final filterPolicyScopeValue = filterPolicyScope;
    if (filterPolicyScopeValue != null) {
      map['filterPolicyScope'] = filterPolicyScopeValue;
    }
    map['protocol'] = protocol;
    final rawMessageDeliveryValue = rawMessageDelivery;
    if (rawMessageDeliveryValue != null) {
      map['rawMessageDelivery'] = rawMessageDeliveryValue;
    }
    final redrivePolicyValue = redrivePolicy;
    if (redrivePolicyValue != null) {
      map['redrivePolicy'] = redrivePolicyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replayPolicyValue = replayPolicy;
    if (replayPolicyValue != null) {
      map['replayPolicy'] = replayPolicyValue;
    }
    final subscriptionRoleArnValue = subscriptionRoleArn;
    if (subscriptionRoleArnValue != null) {
      map['subscriptionRoleArn'] = subscriptionRoleArnValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory TopicSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return TopicSubscriptionArgs(
      confirmationTimeoutInMinutes: pulumi.Input.asOptionalInput<int>(
          map['confirmationTimeoutInMinutes']),
      deliveryPolicy:
          pulumi.Input.asOptionalInput<String>(map['deliveryPolicy']),
      endpoint: pulumi.Input.asInput<String>(map['endpoint']),
      endpointAutoConfirms:
          pulumi.Input.asOptionalInput<bool>(map['endpointAutoConfirms']),
      filterPolicy: pulumi.Input.asOptionalInput<String>(map['filterPolicy']),
      filterPolicyScope:
          pulumi.Input.asOptionalInput<String>(map['filterPolicyScope']),
      protocol: pulumi.Input.asInput<String>(map['protocol']),
      rawMessageDelivery:
          pulumi.Input.asOptionalInput<bool>(map['rawMessageDelivery']),
      redrivePolicy: pulumi.Input.asOptionalInput<String>(map['redrivePolicy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replayPolicy: pulumi.Input.asOptionalInput<String>(map['replayPolicy']),
      subscriptionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['subscriptionRoleArn']),
      topic: pulumi.Input.asInput<String>(map['topic']),
    );
  }
}
