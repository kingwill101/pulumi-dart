// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_backend_config.dart';

/// Configuration settings for Gateways.
class ApigatewayGatewayConfig {
  /// Backend settings that are applied to all backends of the Gateway.
  final ApigatewayBackendConfig backendConfig;

  ApigatewayGatewayConfig({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendConfig'] = backendConfig.toMap();
    return map;
  }

  factory ApigatewayGatewayConfig.fromMap(Map<String, dynamic> map) {
    return ApigatewayGatewayConfig(
      backendConfig: ApigatewayBackendConfig.fromMap(
          (map['backendConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
