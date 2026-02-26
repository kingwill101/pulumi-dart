// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lite_subscription_delivery_config/lite_subscription_delivery_config.dart';

/// The set of arguments for LiteSubscription.
class LiteSubscriptionArgs {
  /// The settings for this subscription's message delivery.
  /// Structure is documented below.
  final Input<LiteSubscriptionDeliveryConfig>? deliveryConfig;

  /// Name of the subscription.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the pubsub lite topic.
  final Input<String>? region;

  /// A reference to a Topic resource.
  final Input<String> topic;

  /// The zone of the pubsub lite topic.
  final Input<String>? zone;

  LiteSubscriptionArgs({
    this.deliveryConfig,
    this.name,
    this.project,
    this.region,
    required this.topic,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryConfigValue = deliveryConfig;
    if (deliveryConfigValue != null) {
      map['deliveryConfig'] = Input.mapOptionalInputValue<
          LiteSubscriptionDeliveryConfig,
          Map<String, dynamic>>(deliveryConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['topic'] = topic;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory LiteSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionArgs(
      deliveryConfig: Input.asOptionalInput<LiteSubscriptionDeliveryConfig>(
          map['deliveryConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      topic: Input.asInput<String>(map['topic']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
