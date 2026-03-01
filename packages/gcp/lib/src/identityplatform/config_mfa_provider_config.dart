// ignore_for_file: unused_element, unnecessary_cast

import 'config_mfa_provider_config_totp_provider_config.dart';

class ConfigMfaProviderConfig {
  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible values are: `DISABLED`, `ENABLED`, `MANDATORY`.
  final String? state;

  /// TOTP MFA provider config for this project.
  /// Structure is documented below.
  final ConfigMfaProviderConfigTotpProviderConfig? totpProviderConfig;

  /// Creates a new [ConfigMfaProviderConfig].
  /// [state] Whether MultiFactor Authentication has been enabled for this project.
  /// [totpProviderConfig] TOTP MFA provider config for this project.
  ConfigMfaProviderConfig({this.state, this.totpProviderConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'totpProviderConfig': ?totpProviderConfig == null
          ? null
          : totpProviderConfig!.toMap(),
    };
  }

  factory ConfigMfaProviderConfig.fromMap(Map<String, dynamic> map) {
    return ConfigMfaProviderConfig(
      state: map['state'] == null ? null : map['state'] as String,
      totpProviderConfig: map['totpProviderConfig'] == null
          ? null
          : ConfigMfaProviderConfigTotpProviderConfig.fromMap(
              (map['totpProviderConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
