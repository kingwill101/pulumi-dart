// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_registered_features_response.dart';

/// Subscription details for the Edge Profile
class EdgeProfileSubscriptionResponse {
  /// ARM ID of the subscription
  final String? id;
  final String? locationPlacementId;
  final String? quotaId;
  final List<SubscriptionRegisteredFeaturesResponse>? registeredFeatures;
  final String? registrationDate;
  /// Edge Subscription Registration ID
  final String? registrationId;
  final String? serializedDetails;
  final String? state;
  final String? subscriptionId;
  final String? tenantId;

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
      'registeredFeatures': ?registeredFeatures == null ? null : pulumi.Input.encodeList<SubscriptionRegisteredFeaturesResponse, Map<String, dynamic>>(registeredFeatures!, (value) => value.toMap()),
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
      id: map['id'] == null ? null : map['id'] as String,
      locationPlacementId: map['locationPlacementId'] == null ? null : map['locationPlacementId'] as String,
      quotaId: map['quotaId'] == null ? null : map['quotaId'] as String,
      registeredFeatures: map['registeredFeatures'] == null ? null : pulumi.Input.decodeList<SubscriptionRegisteredFeaturesResponse>(map['registeredFeatures'], (value) => SubscriptionRegisteredFeaturesResponse.fromMap((value as Map).cast<String, dynamic>())),
      registrationDate: map['registrationDate'] == null ? null : map['registrationDate'] as String,
      registrationId: map['registrationId'] == null ? null : map['registrationId'] as String,
      serializedDetails: map['serializedDetails'] == null ? null : map['serializedDetails'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

