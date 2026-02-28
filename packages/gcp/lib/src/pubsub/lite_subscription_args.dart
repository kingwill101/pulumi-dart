// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_subscription_delivery_config.dart';

/// {@template pulumi_pubsub_lite_subscription_lite_subscription_args_doc}
/// The set of arguments for LiteSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_subscription_lite_subscription_args_doc}
class LiteSubscriptionArgs {
  /// The settings for this subscription's message delivery.
  /// Structure is documented below.
  final pulumi.Input<LiteSubscriptionDeliveryConfig>? deliveryConfig;
  /// Name of the subscription.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the pubsub lite topic.
  final pulumi.Input<String>? region;
  /// A reference to a Topic resource.
  final pulumi.Input<String> topic;
  /// The zone of the pubsub lite topic.
  final pulumi.Input<String>? zone;

  /// Creates a new [LiteSubscriptionArgs].
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [name] Name of the subscription.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite topic.
  /// [topic] A reference to a Topic resource.
  /// [zone] The zone of the pubsub lite topic.
  LiteSubscriptionArgs({
    LiteSubscriptionDeliveryConfig? deliveryConfig,
    String? name,
    String? project,
    String? region,
    required String topic,
    String? zone,
  }) :
      deliveryConfig = pulumi.Input.asOptionalInput<LiteSubscriptionDeliveryConfig>(deliveryConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      topic = pulumi.Input.asInput<String>(topic),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfig': ?pulumi.Input.mapOptionalInputValue<LiteSubscriptionDeliveryConfig, Map<String, dynamic>>(deliveryConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'topic': topic,
      'zone': ?zone,
    };
  }

  factory LiteSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionArgs(
      deliveryConfig: map['deliveryConfig'] == null ? null : LiteSubscriptionDeliveryConfig.fromMap((map['deliveryConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      topic: map['topic'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

