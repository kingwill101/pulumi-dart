// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MarketplacePlanResponse {
  /// The identifying name of the Offer of the Marketplace Plan.
  final pulumi.Input<String> offerId;
  /// The identifying name of the Plan of the Marketplace Plan.
  final pulumi.Input<String> planId;
  /// The identifying name of the Publisher of the Marketplace Plan.
  final pulumi.Input<String> publisherId;

  /// Creates a new [MarketplacePlanResponse].
  /// [offerId] The identifying name of the Offer of the Marketplace Plan.
  /// [planId] The identifying name of the Plan of the Marketplace Plan.
  /// [publisherId] The identifying name of the Publisher of the Marketplace Plan.
  MarketplacePlanResponse({
    required this.offerId,
    required this.planId,
    required this.publisherId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerId': offerId,
      'planId': planId,
      'publisherId': publisherId,
    };
  }

  factory MarketplacePlanResponse.fromMap(Map<String, dynamic> map) {
    return MarketplacePlanResponse(
      offerId: (map['offerId'] as String).input(),
      planId: (map['planId'] as String).input(),
      publisherId: (map['publisherId'] as String).input(),
    );
  }
}

