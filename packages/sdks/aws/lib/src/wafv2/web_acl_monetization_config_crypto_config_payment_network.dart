// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_monetization_config_crypto_config_payment_network_prices.dart';

class WebAclMonetizationConfigCryptoConfigPaymentNetwork {
  /// Blockchain network used for settlement. Valid values are `BASE`, `SOLANA`, `BASE_SEPOLIA`, and `SOLANA_DEVNET`.
  final pulumi.Input<String> chain;
  /// Price configuration for this payment network. Currently supports a single price entry. See `prices` below for details.
  final pulumi.Input<WebAclMonetizationConfigCryptoConfigPaymentNetworkPrices> prices;
  /// Payee wallet address on the specified blockchain that receives payments.
  final pulumi.Input<String> walletAddress;

  /// Creates a new [WebAclMonetizationConfigCryptoConfigPaymentNetwork].
  /// [chain] Blockchain network used for settlement. Valid values are `BASE`, `SOLANA`, `BASE_SEPOLIA`, and `SOLANA_DEVNET`.
  /// [prices] Price configuration for this payment network. Currently supports a single price entry. See `prices` below for details.
  /// [walletAddress] Payee wallet address on the specified blockchain that receives payments.
  const WebAclMonetizationConfigCryptoConfigPaymentNetwork({
    required this.chain,
    required this.prices,
    required this.walletAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chain': chain,
      'prices': pulumi.Input.mapInputValue<WebAclMonetizationConfigCryptoConfigPaymentNetworkPrices, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'walletAddress': walletAddress,
    };
  }

  factory WebAclMonetizationConfigCryptoConfigPaymentNetwork.fromMap(Map<String, dynamic> map) {
    return WebAclMonetizationConfigCryptoConfigPaymentNetwork(
      chain: pulumi.Input.fromValue(map['chain'] as String),
      prices: pulumi.Input.fromValue(WebAclMonetizationConfigCryptoConfigPaymentNetworkPrices.fromMap((map['prices']! as Map).cast<String, dynamic>())),
      walletAddress: pulumi.Input.fromValue(map['walletAddress'] as String),
    );
  }
}
