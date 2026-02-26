// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_http_config_authorization_config/data_source_http_config_authorization_config.dart';

class DataSourceHttpConfig {
  /// Authorization configuration in case the HTTP endpoint requires authorization. See <span pulumi-lang-nodejs="`authorizationConfig`" pulumi-lang-dotnet="`AuthorizationConfig`" pulumi-lang-go="`authorizationConfig`" pulumi-lang-python="`authorization_config`" pulumi-lang-yaml="`authorizationConfig`" pulumi-lang-java="`authorizationConfig`">`authorization_config`</span> Block for details.
  final DataSourceHttpConfigAuthorizationConfig? authorizationConfig;

  /// HTTP URL.
  final String endpoint;

  DataSourceHttpConfig({
    this.authorizationConfig,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationConfigValue = authorizationConfig;
    if (authorizationConfigValue != null) {
      map['authorizationConfig'] = authorizationConfigValue.toMap();
    }
    map['endpoint'] = endpoint;
    return map;
  }

  factory DataSourceHttpConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfig(
      authorizationConfig: map['authorizationConfig'] == null
          ? null
          : DataSourceHttpConfigAuthorizationConfig.fromMap(
              (map['authorizationConfig'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
    );
  }
}
