// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_totp_mfa_provider_config_response.dart';

/// ProviderConfig describes the supported MFA providers along with their configurations.
class GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse {
  /// Describes the state of the MultiFactor Authentication type.
  final String state;

  /// TOTP MFA provider config for this project.
  final GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse
  totpProviderConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse].
  /// [state] Describes the state of the MultiFactor Authentication type.
  /// [totpProviderConfig] TOTP MFA provider config for this project.
  GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse({
    required this.state,
    required this.totpProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'totpProviderConfig': totpProviderConfig.toMap(),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse(
      state: map['state'] as String,
      totpProviderConfig:
          GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse.fromMap(
            (map['totpProviderConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
