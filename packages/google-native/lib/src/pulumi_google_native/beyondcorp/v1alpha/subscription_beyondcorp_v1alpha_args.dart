// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_sku.dart';
import 'subscription_type.dart';

/// The set of arguments for Subscription.
class SubscriptionBeyondcorpV1alphaArgs {
  final pulumi.Input<String>? location;

  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Optional. Number of seats in the subscription.
  final pulumi.Input<String>? seatCount;

  /// SKU of subscription.
  final pulumi.Input<SubscriptionSku> sku;

  /// Type of subscription.
  final pulumi.Input<SubscriptionType> type;

  SubscriptionBeyondcorpV1alphaArgs({
    this.location,
    this.name,
    required this.organizationId,
    this.seatCount,
    required this.sku,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final seatCountValue = seatCount;
    if (seatCountValue != null) {
      map['seatCount'] = seatCountValue;
    }
    map['sku'] = pulumi.Input.mapInputValue<SubscriptionSku, String>(
        sku, (value) => value.value);
    map['type'] = pulumi.Input.mapInputValue<SubscriptionType, String>(
        type, (value) => value.value);
    return map;
  }

  factory SubscriptionBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionBeyondcorpV1alphaArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      seatCount: pulumi.Input.asOptionalInput<String>(map['seatCount']),
      sku: pulumi.Input.asInput<SubscriptionSku>(map['sku']),
      type: pulumi.Input.asInput<SubscriptionType>(map['type']),
    );
  }
}
