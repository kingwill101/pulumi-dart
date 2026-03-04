// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_registered_features_response.dart';

/// Subscription details for the Edge Profile
class EdgeProfileSubscriptionResponse {
  /// ARM ID of the subscription
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? locationPlacementId;
  final pulumi.Input<String>? quotaId;
  final pulumi.Input<List<SubscriptionRegisteredFeaturesResponse>>?
  registeredFeatures;
  final pulumi.Input<String>? registrationDate;

  /// Edge Subscription Registration ID
  final pulumi.Input<String>? registrationId;
  final pulumi.Input<String>? serializedDetails;
  final pulumi.Input<String>? state;
  final pulumi.Input<String>? subscriptionId;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [EdgeProfileSubscriptionResponse].
  /// [id] ARM ID of the subscription
  /// [locationPlacementId] Optional.
  /// [quotaId] Optional.
  /// [registeredFeatures] Optional.
  /// [registrationDate] Optional.
  /// [registrationId] Edge Subscription Registration ID
  /// [serializedDetails] Optional.
  /// [state] Optional.
  /// [subscriptionId] Optional.
  /// [tenantId] Optional.
  EdgeProfileSubscriptionResponse({
    this.id,
    this.locationPlacementId,
    this.quotaId,
    this.registeredFeatures,
    this.registrationDate,
    this.registrationId,
    this.serializedDetails,
    this.state,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'locationPlacementId': ?locationPlacementId,
      'quotaId': ?quotaId,
      'registeredFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubscriptionRegisteredFeaturesResponse>,
            List<Map<String, dynamic>>
          >(
            registeredFeatures,
            (value) =>
                pulumi.Input.encodeList<
                  SubscriptionRegisteredFeaturesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'registrationDate': ?registrationDate,
      'registrationId': ?registrationId,
      'serializedDetails': ?serializedDetails,
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory EdgeProfileSubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return EdgeProfileSubscriptionResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locationPlacementId: (() {
        final guardedValue = map['locationPlacementId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaId: (() {
        final guardedValue = map['quotaId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registeredFeatures: (() {
        final guardedValue = map['registeredFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubscriptionRegisteredFeaturesResponse>(
            guardedValue,
            (value) => SubscriptionRegisteredFeaturesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      registrationDate: (() {
        final guardedValue = map['registrationDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationId: (() {
        final guardedValue = map['registrationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serializedDetails: (() {
        final guardedValue = map['serializedDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
