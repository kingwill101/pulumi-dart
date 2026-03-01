// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_http_config_authorization_config.dart';

class DataSourceHttpConfig {
  /// Authorization configuration in case the HTTP endpoint requires authorization. See `authorization_config` Block for details.
  final DataSourceHttpConfigAuthorizationConfig? authorizationConfig;

  /// HTTP URL.
  final String endpoint;

  /// Creates a new [DataSourceHttpConfig].
  /// [authorizationConfig] Authorization configuration in case the HTTP endpoint requires authorization. See `authorization_config` Block for details.
  /// [endpoint] HTTP URL.
  DataSourceHttpConfig({this.authorizationConfig, required this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?authorizationConfig == null
          ? null
          : authorizationConfig!.toMap(),
      'endpoint': endpoint,
    };
  }

  factory DataSourceHttpConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfig(
      authorizationConfig: map['authorizationConfig'] == null
          ? null
          : DataSourceHttpConfigAuthorizationConfig.fromMap(
              (map['authorizationConfig'] as Map).cast<String, dynamic>(),
            ),
      endpoint: map['endpoint'] as String,
    );
  }
}
