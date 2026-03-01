// ignore_for_file: unused_element, unnecessary_cast

import 'liftr_base_offer_details_response.dart';

/// Marketplace details for an organization
class LiftrBaseMarketplaceDetailsResponse {
  /// Offer details for the marketplace that is selected by the user
  final LiftrBaseOfferDetailsResponse offerDetails;
  /// Azure subscription id for the the marketplace offer is purchased from
  final String? subscriptionId;
  /// Marketplace subscription status
  final String subscriptionStatus;

  /// Creates a new [LiftrBaseMarketplaceDetailsResponse].
  /// [offerDetails] Offer details for the marketplace that is selected by the user
  /// [subscriptionId] Azure subscription id for the the marketplace offer is purchased from
  /// [subscriptionStatus] Marketplace subscription status
  LiftrBaseMarketplaceDetailsResponse({
    required this.offerDetails,
    this.subscriptionId,
    required this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerDetails': offerDetails.toMap(),
      'subscriptionId': ?subscriptionId,
      'subscriptionStatus': subscriptionStatus,
    };
  }

  factory LiftrBaseMarketplaceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return LiftrBaseMarketplaceDetailsResponse(
      offerDetails: LiftrBaseOfferDetailsResponse.fromMap((map['offerDetails'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      subscriptionStatus: map['subscriptionStatus'] as String,
    );
  }
}

