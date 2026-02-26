// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_advanced_api_ops_config.dart';
import 'google_cloud_apigee_v1_analytics_config.dart';
import 'google_cloud_apigee_v1_api_security_config.dart';
import 'google_cloud_apigee_v1_connectors_platform_config.dart';
import 'google_cloud_apigee_v1_integration_config.dart';
import 'google_cloud_apigee_v1_monetization_config.dart';

/// Add-on configurations for the Apigee organization.
class GoogleCloudApigeeV1AddonsConfig {
  /// Configuration for the Advanced API Ops add-on.
  final GoogleCloudApigeeV1AdvancedApiOpsConfig? advancedApiOpsConfig;

  /// Configuration for the Analytics add-on.
  final GoogleCloudApigeeV1AnalyticsConfig? analyticsConfig;

  /// Configuration for the API Security add-on.
  final GoogleCloudApigeeV1ApiSecurityConfig? apiSecurityConfig;

  /// Configuration for the Connectors Platform add-on.
  final GoogleCloudApigeeV1ConnectorsPlatformConfig? connectorsPlatformConfig;

  /// Configuration for the Integration add-on.
  final GoogleCloudApigeeV1IntegrationConfig? integrationConfig;

  /// Configuration for the Monetization add-on.
  final GoogleCloudApigeeV1MonetizationConfig? monetizationConfig;

  GoogleCloudApigeeV1AddonsConfig({
    this.advancedApiOpsConfig,
    this.analyticsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedApiOpsConfigValue = advancedApiOpsConfig;
    if (advancedApiOpsConfigValue != null) {
      map['advancedApiOpsConfig'] = advancedApiOpsConfigValue.toMap();
    }
    final analyticsConfigValue = analyticsConfig;
    if (analyticsConfigValue != null) {
      map['analyticsConfig'] = analyticsConfigValue.toMap();
    }
    final apiSecurityConfigValue = apiSecurityConfig;
    if (apiSecurityConfigValue != null) {
      map['apiSecurityConfig'] = apiSecurityConfigValue.toMap();
    }
    final connectorsPlatformConfigValue = connectorsPlatformConfig;
    if (connectorsPlatformConfigValue != null) {
      map['connectorsPlatformConfig'] = connectorsPlatformConfigValue.toMap();
    }
    final integrationConfigValue = integrationConfig;
    if (integrationConfigValue != null) {
      map['integrationConfig'] = integrationConfigValue.toMap();
    }
    final monetizationConfigValue = monetizationConfig;
    if (monetizationConfigValue != null) {
      map['monetizationConfig'] = monetizationConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudApigeeV1AddonsConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AddonsConfig(
      advancedApiOpsConfig: map['advancedApiOpsConfig'] == null
          ? null
          : GoogleCloudApigeeV1AdvancedApiOpsConfig.fromMap(
              (map['advancedApiOpsConfig'] as Map).cast<String, dynamic>()),
      analyticsConfig: map['analyticsConfig'] == null
          ? null
          : GoogleCloudApigeeV1AnalyticsConfig.fromMap(
              (map['analyticsConfig'] as Map).cast<String, dynamic>()),
      apiSecurityConfig: map['apiSecurityConfig'] == null
          ? null
          : GoogleCloudApigeeV1ApiSecurityConfig.fromMap(
              (map['apiSecurityConfig'] as Map).cast<String, dynamic>()),
      connectorsPlatformConfig: map['connectorsPlatformConfig'] == null
          ? null
          : GoogleCloudApigeeV1ConnectorsPlatformConfig.fromMap(
              (map['connectorsPlatformConfig'] as Map).cast<String, dynamic>()),
      integrationConfig: map['integrationConfig'] == null
          ? null
          : GoogleCloudApigeeV1IntegrationConfig.fromMap(
              (map['integrationConfig'] as Map).cast<String, dynamic>()),
      monetizationConfig: map['monetizationConfig'] == null
          ? null
          : GoogleCloudApigeeV1MonetizationConfig.fromMap(
              (map['monetizationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
