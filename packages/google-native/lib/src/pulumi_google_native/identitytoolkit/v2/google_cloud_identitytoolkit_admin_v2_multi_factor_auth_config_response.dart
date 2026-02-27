// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_identitytoolkit_admin_v2_provider_config_response.dart';

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse {
  /// A list of usable second factors for this project.
  final List<String> enabledProviders;

  /// A list of usable second factors for this project along with their configurations. This field does not support phone based MFA, for that use the 'enabled_providers' field.
  final List<GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse>
      providerConfigs;

  /// Whether MultiFactor Authentication has been enabled for this project.
  final String state;

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse({
    required this.enabledProviders,
    required this.providerConfigs,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledProviders'] = enabledProviders;
    map['providerConfigs'] = Input.encodeList<
        GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse,
        Map<String, dynamic>>(providerConfigs, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse(
      enabledProviders: (map['enabledProviders'] as List).cast<String>(),
      providerConfigs: Input.decodeList<
              GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse>(
          map['providerConfigs'],
          (value) =>
              GoogleCloudIdentitytoolkitAdminV2ProviderConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
