// ignore_for_file: unused_element, unnecessary_cast

import 'api_config_gateway_config_backend_config.dart';

class ApiConfigGatewayConfig {
  /// Backend settings that are applied to all backends of the Gateway.
  /// Structure is documented below.
  final ApiConfigGatewayConfigBackendConfig backendConfig;

  /// Creates a new [ApiConfigGatewayConfig].
  /// [backendConfig] Backend settings that are applied to all backends of the Gateway.
  ApiConfigGatewayConfig({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendConfig'] = backendConfig.toMap();
    return map;
  }

  factory ApiConfigGatewayConfig.fromMap(Map<String, dynamic> map) {
    return ApiConfigGatewayConfig(
      backendConfig: ApiConfigGatewayConfigBackendConfig.fromMap(
          (map['backendConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
