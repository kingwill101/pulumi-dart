// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_monetization_config_crypto_config_payment_network.dart';

class WebAclMonetizationConfigCryptoConfig {
  /// Blockchain payment networks configured to receive payments. You can specify 1 to 2 networks. See `paymentNetwork` below for details.
  final pulumi.Input<List<WebAclMonetizationConfigCryptoConfigPaymentNetwork>> paymentNetworks;

  /// Creates a new [WebAclMonetizationConfigCryptoConfig].
  /// [paymentNetworks] Blockchain payment networks configured to receive payments. You can specify 1 to 2 networks. See `paymentNetwork` below for details.
  const WebAclMonetizationConfigCryptoConfig({
    required this.paymentNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentNetworks': pulumi.Input.mapInputValue<List<WebAclMonetizationConfigCryptoConfigPaymentNetwork>, List<Map<String, dynamic>>>(paymentNetworks, (value) => pulumi.Input.encodeList<WebAclMonetizationConfigCryptoConfigPaymentNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclMonetizationConfigCryptoConfig.fromMap(Map<String, dynamic> map) {
    return WebAclMonetizationConfigCryptoConfig(
      paymentNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclMonetizationConfigCryptoConfigPaymentNetwork>(map['paymentNetworks']!, (value) => WebAclMonetizationConfigCryptoConfigPaymentNetwork.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
