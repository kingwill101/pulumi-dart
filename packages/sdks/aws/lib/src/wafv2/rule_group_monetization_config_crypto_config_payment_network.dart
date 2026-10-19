// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_monetization_config_crypto_config_payment_network_prices.dart';

class RuleGroupMonetizationConfigCryptoConfigPaymentNetwork {
  /// Blockchain network used for settlement. Valid values are `BASE`, `SOLANA`, `BASE_SEPOLIA`, and `SOLANA_DEVNET`.
  final pulumi.Input<String> chain;
  /// Price configuration for this payment network. Currently supports a single price entry. See `prices` below for details.
  final pulumi.Input<RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices> prices;
  /// Payee wallet address on the specified blockchain that receives payments.
  final pulumi.Input<String> walletAddress;

  /// Creates a new [RuleGroupMonetizationConfigCryptoConfigPaymentNetwork].
  /// [chain] Blockchain network used for settlement. Valid values are `BASE`, `SOLANA`, `BASE_SEPOLIA`, and `SOLANA_DEVNET`.
  /// [prices] Price configuration for this payment network. Currently supports a single price entry. See `prices` below for details.
  /// [walletAddress] Payee wallet address on the specified blockchain that receives payments.
  const RuleGroupMonetizationConfigCryptoConfigPaymentNetwork({
    required this.chain,
    required this.prices,
    required this.walletAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chain': chain,
      'prices': pulumi.Input.mapInputValue<RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'walletAddress': walletAddress,
    };
  }

  factory RuleGroupMonetizationConfigCryptoConfigPaymentNetwork.fromMap(Map<String, dynamic> map) {
    return RuleGroupMonetizationConfigCryptoConfigPaymentNetwork(
      chain: pulumi.Input.fromValue(map['chain'] as String),
      prices: pulumi.Input.fromValue(RuleGroupMonetizationConfigCryptoConfigPaymentNetworkPrices.fromMap((map['prices']! as Map).cast<String, dynamic>())),
      walletAddress: pulumi.Input.fromValue(map['walletAddress'] as String),
    );
  }
}
