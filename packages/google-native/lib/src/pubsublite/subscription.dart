import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_config_response.dart';
import 'export_config_response.dart';
import 'subscription_args.dart';

/// Creates a new subscription.
class Subscription extends pulumi.CustomResource {
  /// The settings for this subscription's message delivery.
  late final pulumi.Output<DeliveryConfigResponse> deliveryConfig;
  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  late final pulumi.Output<ExportConfigResponse> exportConfig;
  late final pulumi.Output<String> location;
  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  late final pulumi.Output<bool?> skipBacklog;
  /// Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  late final pulumi.Output<String> subscriptionId;
  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  late final pulumi.Output<String> topic;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_pubsublite_v1_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryConfig = registerOutput<DeliveryConfigResponse>('deliveryConfig');
    this.exportConfig = registerOutput<ExportConfigResponse>('exportConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.skipBacklog = registerOutput<bool?>('skipBacklog');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.topic = registerOutput<String>('topic');
  }
}
