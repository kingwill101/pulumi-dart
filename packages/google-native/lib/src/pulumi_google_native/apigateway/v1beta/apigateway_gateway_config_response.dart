// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_backend_config_response.dart';

/// Configuration settings for Gateways.
class ApigatewayGatewayConfigResponse {
  /// Backend settings that are applied to all backends of the Gateway.
  final ApigatewayBackendConfigResponse backendConfig;

  ApigatewayGatewayConfigResponse({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendConfig'] = backendConfig.toMap();
    return map;
  }

  factory ApigatewayGatewayConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayGatewayConfigResponse(
      backendConfig: ApigatewayBackendConfigResponse.fromMap(
          (map['backendConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
