// ignore_for_file: unused_element, unnecessary_cast

import 'plugin_instance_auth_config_oauth2_client_credentials_config_client_secret.dart';

class PluginInstanceAuthConfigOauth2ClientCredentialsConfig {
  /// The client identifier.
  final String clientId;

  /// Secret provides a reference to entries in Secret Manager.
  final PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret
      clientSecret;

  /// Creates a new [PluginInstanceAuthConfigOauth2ClientCredentialsConfig].
  /// [clientId] The client identifier.
  /// [clientSecret] Secret provides a reference to entries in Secret Manager.
  PluginInstanceAuthConfigOauth2ClientCredentialsConfig({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret.toMap();
    return map;
  }

  factory PluginInstanceAuthConfigOauth2ClientCredentialsConfig.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceAuthConfigOauth2ClientCredentialsConfig(
      clientId: map['clientId'] as String,
      clientSecret:
          PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret
              .fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
    );
  }
}
