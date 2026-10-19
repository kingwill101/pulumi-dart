// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices {
  /// Base price amount per request, expressed as a decimal string with up to 3 decimal places. Minimum `0.001`, maximum `999999999.999` (for example, `"0.001"`).
  final pulumi.Input<String> amount;
  /// Currency of the price amount. Valid value is `USDC`.
  final pulumi.Input<String> currency;

  /// Creates a new [RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices].
  /// [amount] Base price amount per request, expressed as a decimal string with up to 3 decimal places. Minimum `0.001`, maximum `999999999.999` (for example, `"0.001"`).
  /// [currency] Currency of the price amount. Valid value is `USDC`.
  const RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices({
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'currency': currency,
    };
  }

  factory RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices.fromMap(Map<String, dynamic> map) {
    return RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      currency: pulumi.Input.fromValue(map['currency'] as String),
    );
  }
}
