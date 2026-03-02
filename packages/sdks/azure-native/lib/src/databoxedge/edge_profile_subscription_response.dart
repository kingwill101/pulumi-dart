// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_registered_features_response.dart';

/// Subscription details for the Edge Profile
class EdgeProfileSubscriptionResponse {
  /// ARM ID of the subscription
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? locationPlacementId;
  final pulumi.Input<String>? quotaId;
  final pulumi.Input<List<SubscriptionRegisteredFeaturesResponse>>? registeredFeatures;
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
      'registeredFeatures': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionRegisteredFeaturesResponse>, List<Map<String, dynamic>>>(registeredFeatures, (value) => pulumi.Input.encodeList<SubscriptionRegisteredFeaturesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      locationPlacementId: map['locationPlacementId'] == null ? null : (map['locationPlacementId']! as String).input(),
      quotaId: map['quotaId'] == null ? null : (map['quotaId']! as String).input(),
      registeredFeatures: map['registeredFeatures'] == null ? null : (pulumi.Input.decodeList<SubscriptionRegisteredFeaturesResponse>(map['registeredFeatures']!, (value) => SubscriptionRegisteredFeaturesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      registrationDate: map['registrationDate'] == null ? null : (map['registrationDate']! as String).input(),
      registrationId: map['registrationId'] == null ? null : (map['registrationId']! as String).input(),
      serializedDetails: map['serializedDetails'] == null ? null : (map['serializedDetails']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

