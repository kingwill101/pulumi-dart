import 'package:pulumi/pulumi.dart';
import 'topic_subscription_args.dart';

/// Provides a resource for subscribing to SNS topics. Requires that an SNS topic exist for the subscription to attach to. This resource allows you to automatically place messages sent to SNS topics in SQS queues, send them as HTTP(S) POST requests to a given endpoint, send SMS messages, or notify devices / applications. The most likely use case for provider users will probably be SQS queues.
///
/// > **NOTE:** If the SNS topic and SQS queue are in different AWS regions, the `aws.sns.TopicSubscription` must use an AWS provider that is in the same region as the SNS topic. If the `aws.sns.TopicSubscription` uses a provider with a different region than the SNS topic, this provider will fail to create the subscription.
///
/// > **NOTE:** Setup of cross-account subscriptions from SNS topics to SQS queues requires the provider to have access to BOTH accounts.
///
/// > **NOTE:** If an SNS topic and SQS queue are in different AWS accounts but the same region, the `aws.sns.TopicSubscription` must use the AWS provider for the account with the SQS queue. If `aws.sns.TopicSubscription` uses a Provider with a different account than the SQS queue, this provider creates the subscription but does not keep state and tries to re-create the subscription at every `apply`.
///
/// > **NOTE:** If an SNS topic and SQS queue are in different AWS accounts and different AWS regions, the subscription needs to be initiated from the account with the SQS queue but in the region of the SNS topic.
///
/// > **NOTE:** You cannot unsubscribe to a subscription that is pending confirmation. If you use `email`, `email-json`, or `http`/`https` (without auto-confirmation enabled), until the subscription is confirmed (e.g., outside of this provider), AWS does not allow this provider to delete / unsubscribe the subscription. If you `destroy` an unconfirmed subscription, this provider will remove the subscription from its state but the subscription will still exist in AWS. However, if you delete an SNS topic, SNS [deletes all the subscriptions](https://docs.aws.amazon.com/sns/latest/dg/sns-delete-subscription-topic.html) associated with the topic. Also, you can import a subscription after confirmation and then have the capability to delete it.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Example Cross-account Subscription
///
/// You can subscribe SNS topics to SQS queues in different Amazon accounts and regions:
///
///
///
/// ### Example with Delivery Policy
///
/// This example demonstrates how to define a `delivery_policy` for an HTTPS subscription. Unlike the `aws.sns.Topic` resource, the `delivery_policy` for `aws.sns.TopicSubscription` should not be wrapped in an `"http"` object.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic subscription.
///
///
/// Using `pulumi import`, import SNS Topic Subscriptions using the subscription `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topicSubscription:TopicSubscription user_updates_sqs_target arn:aws:sns:us-west-2:123456789012:my-topic:8a21d249-4329-4871-acc6-7be709c6ea7f
/// ```
class TopicSubscription extends CustomResource {
  /// ARN of the subscription.
  late final Output<String> arn;

  /// Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is `1`.
  late final Output<int?> confirmationTimeoutInMinutes;

  /// Whether the subscription confirmation request was authenticated.
  late final Output<bool> confirmationWasAuthenticated;

  /// JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html) for more details.
  late final Output<String?> deliveryPolicy;

  /// Endpoint to send data to. The contents vary with the protocol. See details below.
  late final Output<String> endpoint;

  /// Whether the endpoint is capable of [auto confirming subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is `false`.
  late final Output<bool?> endpointAutoConfirms;

  /// JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html) for more details.
  late final Output<String?> filterPolicy;

  /// Whether the `filter_policy` applies to `MessageAttributes` (default) or `MessageBody`.
  late final Output<String> filterPolicyScope;

  /// AWS account ID of the subscription's owner.
  late final Output<String> ownerId;

  /// Whether the subscription has not been confirmed.
  late final Output<bool> pendingConfirmation;

  /// Protocol to use. Valid values are: `sqs`, `sms`, `lambda`, `firehose`, and `application`. Protocols `email`, `email-json`, `http` and `https` are also valid but partially supported. See details below.
  late final Output<String> protocol;

  /// Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is `false`.
  late final Output<bool?> rawMessageDelivery;

  /// JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details.
  late final Output<String?> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// JSON String with the archived message replay policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html) for more details.
  late final Output<String?> replayPolicy;

  /// ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html).
  late final Output<String?> subscriptionRoleArn;

  /// ARN of the SNS topic to subscribe to.
  ///
  /// The following arguments are optional:
  late final Output<String> topic;

  TopicSubscription(
    String name, {
    TopicSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicSubscription:TopicSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.confirmationTimeoutInMinutes =
        registerOutput<int?>('confirmationTimeoutInMinutes');
    this.confirmationWasAuthenticated =
        registerOutput<bool>('confirmationWasAuthenticated');
    this.deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointAutoConfirms = registerOutput<bool?>('endpointAutoConfirms');
    this.filterPolicy = registerOutput<String?>('filterPolicy');
    this.filterPolicyScope = registerOutput<String>('filterPolicyScope');
    this.ownerId = registerOutput<String>('ownerId');
    this.pendingConfirmation = registerOutput<bool>('pendingConfirmation');
    this.protocol = registerOutput<String>('protocol');
    this.rawMessageDelivery = registerOutput<bool?>('rawMessageDelivery');
    this.redrivePolicy = registerOutput<String?>('redrivePolicy');
    this.region = registerOutput<String>('region');
    this.replayPolicy = registerOutput<String?>('replayPolicy');
    this.subscriptionRoleArn = registerOutput<String?>('subscriptionRoleArn');
    this.topic = registerOutput<String>('topic');
  }
}
