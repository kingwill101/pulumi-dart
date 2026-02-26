// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_provider_config_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_totp_mfa_provider_config.dart';

/// ProviderConfig describes the supported MFA providers along with their configurations.
class GoogleCloudIdentitytoolkitAdminV2ProviderConfig {
  /// Describes the state of the MultiFactor Authentication type.
  final GoogleCloudIdentitytoolkitAdminV2ProviderConfigState? state;

  /// TOTP MFA provider config for this project.
  final GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig?
      totpProviderConfig;

  GoogleCloudIdentitytoolkitAdminV2ProviderConfig({
    this.state,
    this.totpProviderConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    final totpProviderConfigValue = totpProviderConfig;
    if (totpProviderConfigValue != null) {
      map['totpProviderConfig'] = totpProviderConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ProviderConfig(
      state: map['state'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2ProviderConfigState.fromValue(
              map['state'] as String),
      totpProviderConfig: map['totpProviderConfig'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromMap(
              (map['totpProviderConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
