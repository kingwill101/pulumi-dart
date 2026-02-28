// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_sku.dart';
import 'subscription_type.dart';

/// {@template pulumi_beyondcorp_v1alpha_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_subscription_args_doc}
class SubscriptionArgs {
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

  /// Creates a new [SubscriptionArgs].
  /// [location] Optional.
  /// [name] Unique resource name of the Subscription. The name is ignored when creating a subscription.
  /// [organizationId] Required.
  /// [seatCount] Optional. Number of seats in the subscription.
  /// [sku] SKU of subscription.
  /// [type] Type of subscription.
  SubscriptionArgs({
    String? location,
    String? name,
    required String organizationId,
    String? seatCount,
    required SubscriptionSku sku,
    required SubscriptionType type,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        seatCount = pulumi.Input.asOptionalInput<String>(seatCount),
        sku = pulumi.Input.asInput<SubscriptionSku>(sku),
        type = pulumi.Input.asInput<SubscriptionType>(type);

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

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      seatCount: map['seatCount'] == null ? null : map['seatCount'] as String,
      sku: SubscriptionSku.fromValue(map['sku'] as String),
      type: SubscriptionType.fromValue(map['type'] as String),
    );
  }
}
