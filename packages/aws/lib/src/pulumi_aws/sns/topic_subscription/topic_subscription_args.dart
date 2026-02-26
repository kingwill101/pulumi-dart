// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TopicSubscription.
class TopicSubscriptionArgs {
  /// Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final Input<int>? confirmationTimeoutInMinutes;

  /// JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html) for more details.
  final Input<String>? deliveryPolicy;

  /// Endpoint to send data to. The contents vary with the protocol. See details below.
  final Input<String> endpoint;

  /// Whether the endpoint is capable of [auto confirming subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? endpointAutoConfirms;

  /// JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html) for more details.
  final Input<String>? filterPolicy;

  /// Whether the <span pulumi-lang-nodejs="`filterPolicy`" pulumi-lang-dotnet="`FilterPolicy`" pulumi-lang-go="`filterPolicy`" pulumi-lang-python="`filter_policy`" pulumi-lang-yaml="`filterPolicy`" pulumi-lang-java="`filterPolicy`">`filter_policy`</span> applies to `MessageAttributes` (default) or `MessageBody`.
  final Input<String>? filterPolicyScope;

  /// Protocol to use. Valid values are: <span pulumi-lang-nodejs="`sqs`" pulumi-lang-dotnet="`Sqs`" pulumi-lang-go="`sqs`" pulumi-lang-python="`sqs`" pulumi-lang-yaml="`sqs`" pulumi-lang-java="`sqs`">`sqs`</span>, <span pulumi-lang-nodejs="`sms`" pulumi-lang-dotnet="`Sms`" pulumi-lang-go="`sms`" pulumi-lang-python="`sms`" pulumi-lang-yaml="`sms`" pulumi-lang-java="`sms`">`sms`</span>, <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`firehose`" pulumi-lang-dotnet="`Firehose`" pulumi-lang-go="`firehose`" pulumi-lang-python="`firehose`" pulumi-lang-yaml="`firehose`" pulumi-lang-java="`firehose`">`firehose`</span>, and <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>. Protocols <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, `email-json`, <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span> and <span pulumi-lang-nodejs="`https`" pulumi-lang-dotnet="`Https`" pulumi-lang-go="`https`" pulumi-lang-python="`https`" pulumi-lang-yaml="`https`" pulumi-lang-java="`https`">`https`</span> are also valid but partially supported. See details below.
  final Input<String> protocol;

  /// Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? rawMessageDelivery;

  /// JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details.
  final Input<String>? redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// JSON String with the archived message replay policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html) for more details.
  final Input<String>? replayPolicy;

  /// ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html).
  final Input<String>? subscriptionRoleArn;

  /// ARN of the SNS topic to subscribe to.
  ///
  /// The following arguments are optional:
  final Input<String> topic;

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
      confirmationTimeoutInMinutes:
          Input.asOptionalInput<int>(map['confirmationTimeoutInMinutes']),
      deliveryPolicy: Input.asOptionalInput<String>(map['deliveryPolicy']),
      endpoint: Input.asInput<String>(map['endpoint']),
      endpointAutoConfirms:
          Input.asOptionalInput<bool>(map['endpointAutoConfirms']),
      filterPolicy: Input.asOptionalInput<String>(map['filterPolicy']),
      filterPolicyScope:
          Input.asOptionalInput<String>(map['filterPolicyScope']),
      protocol: Input.asInput<String>(map['protocol']),
      rawMessageDelivery:
          Input.asOptionalInput<bool>(map['rawMessageDelivery']),
      redrivePolicy: Input.asOptionalInput<String>(map['redrivePolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      replayPolicy: Input.asOptionalInput<String>(map['replayPolicy']),
      subscriptionRoleArn:
          Input.asOptionalInput<String>(map['subscriptionRoleArn']),
      topic: Input.asInput<String>(map['topic']),
    );
  }
}
