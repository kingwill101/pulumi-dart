// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_saa_sinfo_response.dart';
import 'partner_billing_entity_response.dart';

/// Result data returned by getBillingInfo.
class GetBillingInfoResult {
  /// Marketplace Subscription details
  final MarketplaceSaaSInfoResponse? marketplaceSaasInfo;

  /// Partner Billing Entity details: Organization Info
  final PartnerBillingEntityResponse? partnerBillingEntity;

  /// Creates a new [GetBillingInfoResult].
  /// [marketplaceSaasInfo] Marketplace Subscription details
  /// [partnerBillingEntity] Partner Billing Entity details: Organization Info
  GetBillingInfoResult({this.marketplaceSaasInfo, this.partnerBillingEntity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceSaasInfo': ?marketplaceSaasInfo?.toMap(),
      'partnerBillingEntity': ?partnerBillingEntity?.toMap(),
    };
  }

  factory GetBillingInfoResult.fromMap(Map<String, dynamic> map) {
    return GetBillingInfoResult(
      marketplaceSaasInfo: (() {
        final guardedValue = map['marketplaceSaasInfo'];
        if (guardedValue == null) return null;
        return MarketplaceSaaSInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      partnerBillingEntity: (() {
        final guardedValue = map['partnerBillingEntity'];
        if (guardedValue == null) return null;
        return PartnerBillingEntityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
