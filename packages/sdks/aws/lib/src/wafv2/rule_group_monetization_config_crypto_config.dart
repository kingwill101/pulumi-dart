// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_monetization_config_crypto_config_payment_network.dart';

class RuleGroupMonetizationConfigCryptoConfig {
  /// Blockchain payment networks configured to receive payments. You can specify 1 to 2 networks. See `paymentNetwork` below for details.
  final pulumi.Input<List<RuleGroupMonetizationConfigCryptoConfigPaymentNetwork>> paymentNetworks;

  /// Creates a new [RuleGroupMonetizationConfigCryptoConfig].
  /// [paymentNetworks] Blockchain payment networks configured to receive payments. You can specify 1 to 2 networks. See `paymentNetwork` below for details.
  const RuleGroupMonetizationConfigCryptoConfig({
    required this.paymentNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentNetworks': pulumi.Input.mapInputValue<List<RuleGroupMonetizationConfigCryptoConfigPaymentNetwork>, List<Map<String, dynamic>>>(paymentNetworks, (value) => pulumi.Input.encodeList<RuleGroupMonetizationConfigCryptoConfigPaymentNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupMonetizationConfigCryptoConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupMonetizationConfigCryptoConfig(
      paymentNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupMonetizationConfigCryptoConfigPaymentNetwork>(map['paymentNetworks']!, (value) => RuleGroupMonetizationConfigCryptoConfigPaymentNetwork.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
