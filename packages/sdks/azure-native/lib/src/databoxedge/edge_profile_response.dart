// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_profile_subscription_response.dart';

/// Details about Edge Profile for the resource
class EdgeProfileResponse {
  /// Edge Profile Subscription
  final pulumi.Input<EdgeProfileSubscriptionResponse>? subscription;

  /// Creates a new [EdgeProfileResponse].
  /// [subscription] Edge Profile Subscription
  const EdgeProfileResponse({
    this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscription': ?pulumi.Input.mapOptionalInputValue<EdgeProfileSubscriptionResponse, Map<String, dynamic>>(subscription, (value) => value.toMap()),
    };
  }

  factory EdgeProfileResponse.fromMap(Map<String, dynamic> map) {
    return EdgeProfileResponse(
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeProfileSubscriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
