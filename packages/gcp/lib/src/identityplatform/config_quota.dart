// ignore_for_file: unused_element, unnecessary_cast

import 'config_quota_sign_up_quota_config.dart';

class ConfigQuota {
  /// Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. None of quota, startTime, or quotaDuration can be skipped.
  /// Structure is documented below.
  final ConfigQuotaSignUpQuotaConfig? signUpQuotaConfig;

  /// Creates a new [ConfigQuota].
  /// [signUpQuotaConfig] Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. None of quota, startTime, or quotaDuration can be skipped.
  ConfigQuota({
    this.signUpQuotaConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final signUpQuotaConfigValue = signUpQuotaConfig;
    if (signUpQuotaConfigValue != null) {
      map['signUpQuotaConfig'] = signUpQuotaConfigValue.toMap();
    }
    return map;
  }

  factory ConfigQuota.fromMap(Map<String, dynamic> map) {
    return ConfigQuota(
      signUpQuotaConfig: map['signUpQuotaConfig'] == null
          ? null
          : ConfigQuotaSignUpQuotaConfig.fromMap(
              (map['signUpQuotaConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
