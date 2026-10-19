// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_monetization_config_crypto_config.dart';

class RuleGroupMonetizationConfig {
  /// Cryptocurrency payment configuration for the rule group. See `cryptoConfig` below for details.
  final pulumi.Input<RuleGroupMonetizationConfigCryptoConfig?>? cryptoConfig;
  /// Currency mode for monetized requests. Valid values are `TEST` and `REAL`. Defaults to `REAL`.
  final pulumi.Input<String?>? currencyMode;

  /// Creates a new [RuleGroupMonetizationConfig].
  /// [cryptoConfig] Cryptocurrency payment configuration for the rule group. See `cryptoConfig` below for details.
  /// [currencyMode] Currency mode for monetized requests. Valid values are `TEST` and `REAL`. Defaults to `REAL`.
  const RuleGroupMonetizationConfig({
    this.cryptoConfig,
    this.currencyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupMonetizationConfigCryptoConfig, Map<String, dynamic>>(cryptoConfig, (value) => value.toMap()),
      'currencyMode': ?currencyMode,
    };
  }

  factory RuleGroupMonetizationConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupMonetizationConfig(
      cryptoConfig: (() { final guardedValue = map['cryptoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupMonetizationConfigCryptoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currencyMode: (() { final guardedValue = map['currencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
