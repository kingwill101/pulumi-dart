// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'subscription_sku.dart';
import 'subscription_type.dart';

/// The set of arguments for Subscription.
class SubscriptionArgs2 {
  final Input<String>? location;

  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Optional. Number of seats in the subscription.
  final Input<String>? seatCount;

  /// SKU of subscription.
  final Input<SubscriptionSku> sku;

  /// Type of subscription.
  final Input<SubscriptionType> type;

  SubscriptionArgs2({
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
    map['sku'] = Input.mapInputValue<SubscriptionSku, String>(
        sku, (value) => value.value);
    map['type'] = Input.mapInputValue<SubscriptionType, String>(
        type, (value) => value.value);
    return map;
  }

  factory SubscriptionArgs2.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs2(
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      seatCount: Input.asOptionalInput<String>(map['seatCount']),
      sku: Input.asInput<SubscriptionSku>(map['sku']),
      type: Input.asInput<SubscriptionType>(map['type']),
    );
  }
}
