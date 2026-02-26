// ignore_for_file: unused_element, unnecessary_cast

import '../flow_source_flow_config_incremental_pull_config/flow_source_flow_config_incremental_pull_config.dart';
import '../flow_source_flow_config_source_connector_properties/flow_source_flow_config_source_connector_properties.dart';

class FlowSourceFlowConfig {
  /// API version that the destination connector uses.
  final String? apiVersion;

  /// Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  final String? connectorProfileName;

  /// Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  final String connectorType;

  /// Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull. See Incremental Pull Config for more details.
  final FlowSourceFlowConfigIncrementalPullConfig? incrementalPullConfig;

  /// Information that is required to query a particular source connector. See Source Connector Properties for details.
  final FlowSourceFlowConfigSourceConnectorProperties sourceConnectorProperties;

  FlowSourceFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    this.incrementalPullConfig,
    required this.sourceConnectorProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiVersionValue = apiVersion;
    if (apiVersionValue != null) {
      map['apiVersion'] = apiVersionValue;
    }
    final connectorProfileNameValue = connectorProfileName;
    if (connectorProfileNameValue != null) {
      map['connectorProfileName'] = connectorProfileNameValue;
    }
    map['connectorType'] = connectorType;
    final incrementalPullConfigValue = incrementalPullConfig;
    if (incrementalPullConfigValue != null) {
      map['incrementalPullConfig'] = incrementalPullConfigValue.toMap();
    }
    map['sourceConnectorProperties'] = sourceConnectorProperties.toMap();
    return map;
  }

  factory FlowSourceFlowConfig.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfig(
      apiVersion:
          map['apiVersion'] == null ? null : map['apiVersion'] as String,
      connectorProfileName: map['connectorProfileName'] == null
          ? null
          : map['connectorProfileName'] as String,
      connectorType: map['connectorType'] as String,
      incrementalPullConfig: map['incrementalPullConfig'] == null
          ? null
          : FlowSourceFlowConfigIncrementalPullConfig.fromMap(
              (map['incrementalPullConfig'] as Map).cast<String, dynamic>()),
      sourceConnectorProperties:
          FlowSourceFlowConfigSourceConnectorProperties.fromMap(
              (map['sourceConnectorProperties'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
