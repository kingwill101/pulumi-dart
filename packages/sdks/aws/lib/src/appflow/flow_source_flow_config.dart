// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_source_flow_config_incremental_pull_config.dart';
import 'flow_source_flow_config_source_connector_properties.dart';

class FlowSourceFlowConfig {
  /// API version that the destination connector uses.
  final pulumi.Input<String>? apiVersion;
  /// Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  final pulumi.Input<String>? connectorProfileName;
  /// Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  final pulumi.Input<String> connectorType;
  /// Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull. See Incremental Pull Config for more details.
  final pulumi.Input<FlowSourceFlowConfigIncrementalPullConfig>? incrementalPullConfig;
  /// Information that is required to query a particular source connector. See Source Connector Properties for details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorProperties> sourceConnectorProperties;

  /// Creates a new [FlowSourceFlowConfig].
  /// [apiVersion] API version that the destination connector uses.
  /// [connectorProfileName] Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  /// [connectorType] Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  /// [incrementalPullConfig] Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull. See Incremental Pull Config for more details.
  /// [sourceConnectorProperties] Information that is required to query a particular source connector. See Source Connector Properties for details.
  FlowSourceFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    this.incrementalPullConfig,
    required this.sourceConnectorProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'connectorProfileName': ?connectorProfileName,
      'connectorType': connectorType,
      'incrementalPullConfig': ?pulumi.Input.mapOptionalInputValue<FlowSourceFlowConfigIncrementalPullConfig, Map<String, dynamic>>(incrementalPullConfig, (value) => value.toMap()),
      'sourceConnectorProperties': pulumi.Input.mapInputValue<FlowSourceFlowConfigSourceConnectorProperties, Map<String, dynamic>>(sourceConnectorProperties, (value) => value.toMap()),
    };
  }

  factory FlowSourceFlowConfig.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfig(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorProfileName: (() { final guardedValue = map['connectorProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      incrementalPullConfig: (() { final guardedValue = map['incrementalPullConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSourceFlowConfigIncrementalPullConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConnectorProperties: pulumi.Input.fromValue(FlowSourceFlowConfigSourceConnectorProperties.fromMap((map['sourceConnectorProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

