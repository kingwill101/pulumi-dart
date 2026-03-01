// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_backend_config_response.dart';

/// Configuration settings for Gateways.
class ApigatewayGatewayConfigResponse {
  /// Backend settings that are applied to all backends of the Gateway.
  final ApigatewayBackendConfigResponse backendConfig;

  /// Creates a new [ApigatewayGatewayConfigResponse].
  /// [backendConfig] Backend settings that are applied to all backends of the Gateway.
  ApigatewayGatewayConfigResponse({required this.backendConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'backendConfig': backendConfig.toMap()};
  }

  factory ApigatewayGatewayConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayGatewayConfigResponse(
      backendConfig: ApigatewayBackendConfigResponse.fromMap(
        (map['backendConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
