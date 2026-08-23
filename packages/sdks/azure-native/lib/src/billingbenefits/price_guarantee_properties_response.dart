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
  const PriceGuaranteePropertiesResponse({
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
      priceGuaranteeDate: (() { final guardedValue = map['priceGuaranteeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingPolicy: (() { final guardedValue = map['pricingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
