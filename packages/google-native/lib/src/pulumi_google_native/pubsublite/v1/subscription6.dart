import 'package:pulumi/pulumi.dart';
import 'delivery_config_response.dart';
import 'export_config_response.dart';
import 'subscription_args6.dart';

/// Creates a new subscription.
class Subscription6 extends CustomResource {
  /// The settings for this subscription's message delivery.
  late final Output<DeliveryConfigResponse> deliveryConfig;

  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  late final Output<ExportConfigResponse> exportConfig;
  late final Output<String> location;

  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  late final Output<String> name;
  late final Output<String> project;

  /// If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  late final Output<bool?> skipBacklog;

  /// Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  late final Output<String> subscriptionId;

  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  late final Output<String> topic;

  Subscription6(
    String name, {
    SubscriptionArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deliveryConfig = Output.createUnknown<DeliveryConfigResponse>();
    this.exportConfig = Output.createUnknown<ExportConfigResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.skipBacklog = Output.createUnknown<bool?>();
    this.subscriptionId = Output.createUnknown<String>();
    this.topic = Output.createUnknown<String>();
  }
}
