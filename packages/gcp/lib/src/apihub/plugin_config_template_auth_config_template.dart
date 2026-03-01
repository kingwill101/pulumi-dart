// ignore_for_file: unused_element, unnecessary_cast

import 'plugin_config_template_auth_config_template_service_account.dart';

class PluginConfigTemplateAuthConfigTemplate {
  /// Config for Google service account authentication.
  /// Structure is documented below.
  final PluginConfigTemplateAuthConfigTemplateServiceAccount? serviceAccount;

  /// The list of authentication types supported by the plugin.
  final List<String> supportedAuthTypes;

  /// Creates a new [PluginConfigTemplateAuthConfigTemplate].
  /// [serviceAccount] Config for Google service account authentication.
  /// [supportedAuthTypes] The list of authentication types supported by the plugin.
  PluginConfigTemplateAuthConfigTemplate({
    this.serviceAccount,
    required this.supportedAuthTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount == null
          ? null
          : serviceAccount!.toMap(),
      'supportedAuthTypes': supportedAuthTypes,
    };
  }

  factory PluginConfigTemplateAuthConfigTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginConfigTemplateAuthConfigTemplate(
      serviceAccount: map['serviceAccount'] == null
          ? null
          : PluginConfigTemplateAuthConfigTemplateServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>(),
            ),
      supportedAuthTypes: (map['supportedAuthTypes'] as List).cast<String>(),
    );
  }
}
