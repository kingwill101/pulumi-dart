// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_monetization_config_crypto_config.dart';

class WebAclMonetizationConfig {
  /// Cryptocurrency payment configuration for the web ACL. See `cryptoConfig` below for details.
  final pulumi.Input<WebAclMonetizationConfigCryptoConfig?>? cryptoConfig;
  /// Currency mode for monetized requests. Valid values are `TEST` and `REAL`. Defaults to `REAL`.
  final pulumi.Input<String?>? currencyMode;

  /// Creates a new [WebAclMonetizationConfig].
  /// [cryptoConfig] Cryptocurrency payment configuration for the web ACL. See `cryptoConfig` below for details.
  /// [currencyMode] Currency mode for monetized requests. Valid values are `TEST` and `REAL`. Defaults to `REAL`.
  const WebAclMonetizationConfig({
    this.cryptoConfig,
    this.currencyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoConfig': ?pulumi.Input.mapOptionalInputValue<WebAclMonetizationConfigCryptoConfig, Map<String, dynamic>>(cryptoConfig, (value) => value.toMap()),
      'currencyMode': ?currencyMode,
    };
  }

  factory WebAclMonetizationConfig.fromMap(Map<String, dynamic> map) {
    return WebAclMonetizationConfig(
      cryptoConfig: (() { final guardedValue = map['cryptoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclMonetizationConfigCryptoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currencyMode: (() { final guardedValue = map['currencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
