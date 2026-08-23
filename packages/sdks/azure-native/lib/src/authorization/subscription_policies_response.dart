// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subscription policies.
class SubscriptionPoliciesResponse {
  /// The subscription location placement ID.
  final pulumi.Input<String>? locationPlacementId;
  /// The subscription quota ID.
  final pulumi.Input<String>? quotaId;
  /// The subscription spending limit.
  final pulumi.Input<String>? spendingLimit;

  /// Creates a new [SubscriptionPoliciesResponse].
  /// [locationPlacementId] The subscription location placement ID.
  /// [quotaId] The subscription quota ID.
  /// [spendingLimit] The subscription spending limit.
  const SubscriptionPoliciesResponse({
    this.locationPlacementId,
    this.quotaId,
    this.spendingLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPlacementId': ?locationPlacementId,
      'quotaId': ?quotaId,
      'spendingLimit': ?spendingLimit,
    };
  }

  factory SubscriptionPoliciesResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionPoliciesResponse(
      locationPlacementId: (() { final guardedValue = map['locationPlacementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaId: (() { final guardedValue = map['quotaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spendingLimit: (() { final guardedValue = map['spendingLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
