// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties/flow_destination_flow_config_destination_connector_properties.dart';

class FlowDestinationFlowConfig {
  /// API version that the destination connector uses.
  final String? apiVersion;

  /// Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  final String? connectorProfileName;

  /// Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  final String connectorType;

  /// This stores the information that is required to query a particular connector. See Destination Connector Properties for more information.
  final FlowDestinationFlowConfigDestinationConnectorProperties
      destinationConnectorProperties;

  FlowDestinationFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    required this.destinationConnectorProperties,
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
    map['destinationConnectorProperties'] =
        destinationConnectorProperties.toMap();
    return map;
  }

  factory FlowDestinationFlowConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfig(
      apiVersion:
          map['apiVersion'] == null ? null : map['apiVersion'] as String,
      connectorProfileName: map['connectorProfileName'] == null
          ? null
          : map['connectorProfileName'] as String,
      connectorType: map['connectorType'] as String,
      destinationConnectorProperties:
          FlowDestinationFlowConfigDestinationConnectorProperties.fromMap(
              (map['destinationConnectorProperties'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
