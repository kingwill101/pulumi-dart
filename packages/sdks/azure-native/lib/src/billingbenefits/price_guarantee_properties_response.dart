// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set only in price guarantee scenario.
class PriceGuaranteePropertiesResponse {
  /// The date on which prices are to be used for guarantee calculation. Validation: expected to be 00 hours, Format: 2024-09-30T00:00:00Z. Must be in UTC.
  final pulumi.Input<String>? priceGuaranteeDate;
  /// Supported values: Protected, Locked
  final pulumi.Input<String>? pricingPolicy;

  /// Creates a new [PriceGuaranteePropertiesResponse].
  /// [priceGuaranteeDate] The date on which prices are to be used for guarantee calculation. Validation: expected to be 00 hours, Format: 2024-09-30T00:00:00Z. Must be in UTC.
  /// [pricingPolicy] Supported values: Protected, Locked
  PriceGuaranteePropertiesResponse({
    this.priceGuaranteeDate,
    this.pricingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priceGuaranteeDate': ?priceGuaranteeDate,
      'pricingPolicy': ?pricingPolicy,
    };
  }

  factory PriceGuaranteePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PriceGuaranteePropertiesResponse(
      priceGuaranteeDate: map['priceGuaranteeDate'] == null ? null : (map['priceGuaranteeDate'] as String).input(),
      pricingPolicy: map['pricingPolicy'] == null ? null : (map['pricingPolicy'] as String).input(),
    );
  }
}

