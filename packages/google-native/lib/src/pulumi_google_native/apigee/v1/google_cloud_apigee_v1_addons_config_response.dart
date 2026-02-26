// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_advanced_api_ops_config_response.dart';
import 'google_cloud_apigee_v1_analytics_config_response.dart';
import 'google_cloud_apigee_v1_api_security_config_response.dart';
import 'google_cloud_apigee_v1_connectors_platform_config_response.dart';
import 'google_cloud_apigee_v1_integration_config_response.dart';
import 'google_cloud_apigee_v1_monetization_config_response.dart';

/// Add-on configurations for the Apigee organization.
class GoogleCloudApigeeV1AddonsConfigResponse {
  /// Configuration for the Advanced API Ops add-on.
  final GoogleCloudApigeeV1AdvancedApiOpsConfigResponse advancedApiOpsConfig;

  /// Configuration for the Analytics add-on.
  final GoogleCloudApigeeV1AnalyticsConfigResponse analyticsConfig;

  /// Configuration for the API Security add-on.
  final GoogleCloudApigeeV1ApiSecurityConfigResponse apiSecurityConfig;

  /// Configuration for the Connectors Platform add-on.
  final GoogleCloudApigeeV1ConnectorsPlatformConfigResponse
      connectorsPlatformConfig;

  /// Configuration for the Integration add-on.
  final GoogleCloudApigeeV1IntegrationConfigResponse integrationConfig;

  /// Configuration for the Monetization add-on.
  final GoogleCloudApigeeV1MonetizationConfigResponse monetizationConfig;

  GoogleCloudApigeeV1AddonsConfigResponse({
    required this.advancedApiOpsConfig,
    required this.analyticsConfig,
    required this.apiSecurityConfig,
    required this.connectorsPlatformConfig,
    required this.integrationConfig,
    required this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedApiOpsConfig'] = advancedApiOpsConfig.toMap();
    map['analyticsConfig'] = analyticsConfig.toMap();
    map['apiSecurityConfig'] = apiSecurityConfig.toMap();
    map['connectorsPlatformConfig'] = connectorsPlatformConfig.toMap();
    map['integrationConfig'] = integrationConfig.toMap();
    map['monetizationConfig'] = monetizationConfig.toMap();
    return map;
  }

  factory GoogleCloudApigeeV1AddonsConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AddonsConfigResponse(
      advancedApiOpsConfig:
          GoogleCloudApigeeV1AdvancedApiOpsConfigResponse.fromMap(
              (map['advancedApiOpsConfig'] as Map).cast<String, dynamic>()),
      analyticsConfig: GoogleCloudApigeeV1AnalyticsConfigResponse.fromMap(
          (map['analyticsConfig'] as Map).cast<String, dynamic>()),
      apiSecurityConfig: GoogleCloudApigeeV1ApiSecurityConfigResponse.fromMap(
          (map['apiSecurityConfig'] as Map).cast<String, dynamic>()),
      connectorsPlatformConfig:
          GoogleCloudApigeeV1ConnectorsPlatformConfigResponse.fromMap(
              (map['connectorsPlatformConfig'] as Map).cast<String, dynamic>()),
      integrationConfig: GoogleCloudApigeeV1IntegrationConfigResponse.fromMap(
          (map['integrationConfig'] as Map).cast<String, dynamic>()),
      monetizationConfig: GoogleCloudApigeeV1MonetizationConfigResponse.fromMap(
          (map['monetizationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
