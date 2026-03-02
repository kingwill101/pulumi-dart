// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_subscription_registered_features.dart';

/// Holds Customer subscription details. Clients can display available products to unregistered customers by explicitly passing subscription details.
class CustomerSubscriptionDetails {
  /// Location placement Id of a subscription.
  final pulumi.Input<String>? locationPlacementId;
  /// Quota ID of a subscription.
  final pulumi.Input<String> quotaId;
  /// List of registered feature flags for subscription.
  final pulumi.Input<List<CustomerSubscriptionRegisteredFeatures>>? registeredFeatures;

  /// Creates a new [CustomerSubscriptionDetails].
  /// [locationPlacementId] Location placement Id of a subscription.
  /// [quotaId] Quota ID of a subscription.
  /// [registeredFeatures] List of registered feature flags for subscription.
  CustomerSubscriptionDetails({
    this.locationPlacementId,
    required this.quotaId,
    this.registeredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPlacementId': ?locationPlacementId,
      'quotaId': quotaId,
      'registeredFeatures': ?pulumi.Input.mapOptionalInputValue<List<CustomerSubscriptionRegisteredFeatures>, List<Map<String, dynamic>>>(registeredFeatures, (value) => pulumi.Input.encodeList<CustomerSubscriptionRegisteredFeatures, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomerSubscriptionDetails.fromMap(Map<String, dynamic> map) {
    return CustomerSubscriptionDetails(
      locationPlacementId: map['locationPlacementId'] == null ? null : (map['locationPlacementId']! as String).input(),
      quotaId: (map['quotaId'] as String).input(),
      registeredFeatures: map['registeredFeatures'] == null ? null : (pulumi.Input.decodeList<CustomerSubscriptionRegisteredFeatures>(map['registeredFeatures']!, (value) => CustomerSubscriptionRegisteredFeatures.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

