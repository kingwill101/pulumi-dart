// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties.dart';

class FlowDestinationFlowConfig {
  /// API version that the destination connector uses.
  final pulumi.Input<String>? apiVersion;

  /// Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  final pulumi.Input<String>? connectorProfileName;

  /// Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  final pulumi.Input<String> connectorType;

  /// This stores the information that is required to query a particular connector. See Destination Connector Properties for more information.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorProperties>
  destinationConnectorProperties;

  /// Creates a new [FlowDestinationFlowConfig].
  /// [apiVersion] API version that the destination connector uses.
  /// [connectorProfileName] Name of the connector profile. This name must be unique for each connector profile in the AWS account.
  /// [connectorType] Type of connector, such as Salesforce, Amplitude, and so on. Valid values are `Salesforce`, `Singular`, `Slack`, `Redshift`, `S3`, `Marketo`, `Googleanalytics`, `Zendesk`, `Servicenow`, `Datadog`, `Trendmicro`, `Snowflake`, `Dynatrace`, `Infornexus`, `Amplitude`, `Veeva`, `EventBridge`, `LookoutMetrics`, `Upsolver`, `Honeycode`, `CustomerProfiles`, `SAPOData`, and `CustomConnector`.
  /// [destinationConnectorProperties] This stores the information that is required to query a particular connector. See Destination Connector Properties for more information.
  FlowDestinationFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    required this.destinationConnectorProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'connectorProfileName': ?connectorProfileName,
      'connectorType': connectorType,
      'destinationConnectorProperties':
          pulumi.Input.mapInputValue<
            FlowDestinationFlowConfigDestinationConnectorProperties,
            Map<String, dynamic>
          >(destinationConnectorProperties, (value) => value.toMap()),
    };
  }

  factory FlowDestinationFlowConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfig(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectorProfileName: (() {
        final guardedValue = map['connectorProfileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      destinationConnectorProperties: pulumi.Input.fromValue(
        FlowDestinationFlowConfigDestinationConnectorProperties.fromMap(
          (map['destinationConnectorProperties']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
