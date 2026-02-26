// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_enabled_providers_item.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_provider_config.dart';

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig {
  /// A list of usable second factors for this project.
  final List<
          GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem>?
      enabledProviders;

  /// A list of usable second factors for this project along with their configurations. This field does not support phone based MFA, for that use the 'enabled_providers' field.
  final List<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>? providerConfigs;

  /// Whether MultiFactor Authentication has been enabled for this project.
  final GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState? state;

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig({
    this.enabledProviders,
    this.providerConfigs,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledProvidersValue = enabledProviders;
    if (enabledProvidersValue != null) {
      map['enabledProviders'] = Input.encodeList<
          GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem,
          String>(enabledProvidersValue, (value) => value.value);
    }
    final providerConfigsValue = providerConfigs;
    if (providerConfigsValue != null) {
      map['providerConfigs'] = Input.encodeList<
          GoogleCloudIdentitytoolkitAdminV2ProviderConfig,
          Map<String, dynamic>>(providerConfigsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(
      enabledProviders: map['enabledProviders'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem>(
              map['enabledProviders'],
              (value) =>
                  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem
                      .fromValue(value as String)),
      providerConfigs: map['providerConfigs'] == null
          ? null
          : Input.decodeList<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>(
              map['providerConfigs'],
              (value) =>
                  GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      state: map['state'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState
              .fromValue(map['state'] as String),
    );
  }
}
