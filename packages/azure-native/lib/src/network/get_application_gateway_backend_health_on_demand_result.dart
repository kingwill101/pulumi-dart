// ignore_for_file: unused_element, unnecessary_cast

import 'application_gateway_backend_address_pool_response.dart';
import 'application_gateway_backend_health_http_settings_response.dart';

/// Result data returned by getApplicationGatewayBackendHealthOnDemand.
class GetApplicationGatewayBackendHealthOnDemandResult {
  /// Reference to an ApplicationGatewayBackendAddressPool resource.
  final ApplicationGatewayBackendAddressPoolResponse? backendAddressPool;
  /// Application gateway BackendHealthHttp settings.
  final ApplicationGatewayBackendHealthHttpSettingsResponse? backendHealthHttpSettings;

  /// Creates a new [GetApplicationGatewayBackendHealthOnDemandResult].
  /// [backendAddressPool] Reference to an ApplicationGatewayBackendAddressPool resource.
  /// [backendHealthHttpSettings] Application gateway BackendHealthHttp settings.
  GetApplicationGatewayBackendHealthOnDemandResult({
    this.backendAddressPool,
    this.backendHealthHttpSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendHealthHttpSettings': ?backendHealthHttpSettings == null ? null : backendHealthHttpSettings!.toMap(),
    };
  }

  factory GetApplicationGatewayBackendHealthOnDemandResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHealthOnDemandResult(
      backendAddressPool: map['backendAddressPool'] == null ? null : ApplicationGatewayBackendAddressPoolResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendHealthHttpSettings: map['backendHealthHttpSettings'] == null ? null : ApplicationGatewayBackendHealthHttpSettingsResponse.fromMap((map['backendHealthHttpSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

