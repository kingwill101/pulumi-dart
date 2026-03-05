// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_http_config_authorization_config.dart';

class DataSourceHttpConfig {
  /// Authorization configuration in case the HTTP endpoint requires authorization. See `authorization_config` Block for details.
  final pulumi.Input<DataSourceHttpConfigAuthorizationConfig>? authorizationConfig;
  /// HTTP URL.
  final pulumi.Input<String> endpoint;

  /// Creates a new [DataSourceHttpConfig].
  /// [authorizationConfig] Authorization configuration in case the HTTP endpoint requires authorization. See `authorization_config` Block for details.
  /// [endpoint] HTTP URL.
  DataSourceHttpConfig({
    this.authorizationConfig,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceHttpConfigAuthorizationConfig, Map<String, dynamic>>(authorizationConfig, (value) => value.toMap()),
      'endpoint': endpoint,
    };
  }

  factory DataSourceHttpConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfig(
      authorizationConfig: (() { final guardedValue = map['authorizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceHttpConfigAuthorizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

