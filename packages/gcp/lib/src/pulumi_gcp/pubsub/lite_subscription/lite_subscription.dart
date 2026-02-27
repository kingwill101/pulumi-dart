import 'package:pulumi/pulumi.dart';
import '../lite_subscription_delivery_config/lite_subscription_delivery_config.dart';
import 'lite_subscription_args.dart';

/// > **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use `gcp.pubsub.Subscription` instead.
///
/// A named resource representing the stream of messages from a single,
/// specific topic, to be delivered to the subscribing application.
///
///
/// To get more information about Subscription, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.subscriptions)
/// * How-to Guides
/// * [Managing Subscriptions](https://cloud.google.com/pubsub/lite/docs/subscriptions)
///
/// ## Example Usage
///
/// ### Pubsub Lite Subscription Basic
///
///
///
///
/// ## Import
///
/// Subscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/subscriptions/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default projects/{{project}}/locations/{{zone}}/subscriptions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{name}}
/// ```
class LiteSubscription extends CustomResource {
  /// The settings for this subscription's message delivery.
  /// Structure is documented below.
  late final Output<LiteSubscriptionDeliveryConfig?> deliveryConfig;

  /// Name of the subscription.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the pubsub lite topic.
  late final Output<String?> region;

  /// A reference to a Topic resource.
  late final Output<String> topic;

  /// The zone of the pubsub lite topic.
  late final Output<String?> zone;

  LiteSubscription(
    String name, {
    LiteSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteSubscription:LiteSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deliveryConfig =
        registerOutput<LiteSubscriptionDeliveryConfig?>('deliveryConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.topic = registerOutput<String>('topic');
    this.zone = registerOutput<String?>('zone');
  }
}
