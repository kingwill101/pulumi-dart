// ignore_for_file: unused_element, unnecessary_cast

import 'plugin_instance_auth_config_api_key_config_api_key.dart';

class PluginInstanceAuthConfigApiKeyConfig {
  /// Secret provides a reference to entries in Secret Manager.
  /// Structure is documented below.
  final PluginInstanceAuthConfigApiKeyConfigApiKey apiKey;

  /// The location of the API key.
  /// The default value is QUERY.
  /// Possible values:
  /// HTTP_ELEMENT_LOCATION_UNSPECIFIED
  /// QUERY
  /// HEADER
  /// PATH
  /// BODY
  /// COOKIE
  final String httpElementLocation;

  /// The parameter name of the API key.
  /// E.g. If the API request is "https://example.com/act?api_key=",
  /// "api_key" would be the parameter name.
  final String name;

  /// Creates a new [PluginInstanceAuthConfigApiKeyConfig].
  /// [apiKey] Secret provides a reference to entries in Secret Manager.
  /// [httpElementLocation] The location of the API key.
  /// [name] The parameter name of the API key.
  PluginInstanceAuthConfigApiKeyConfig({
    required this.apiKey,
    required this.httpElementLocation,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey.toMap(),
      'httpElementLocation': httpElementLocation,
      'name': name,
    };
  }

  factory PluginInstanceAuthConfigApiKeyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceAuthConfigApiKeyConfig(
      apiKey: PluginInstanceAuthConfigApiKeyConfigApiKey.fromMap(
        (map['apiKey'] as Map).cast<String, dynamic>(),
      ),
      httpElementLocation: map['httpElementLocation'] as String,
      name: map['name'] as String,
    );
  }
}
