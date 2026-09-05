// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config.dart';

/// {@template pulumi_appflow_connector_profile_connector_profile_args_doc}
/// The set of arguments for ConnectorProfile.
/// {@endtemplate}
/// {@macro pulumi_appflow_connector_profile_connector_profile_args_doc}
class ConnectorProfileArgs {
  /// Connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  final pulumi.Input<String> connectionMode;
  /// Label of the connector. The label is unique for each `ConnectorRegistration` in your AWS account. Only needed if calling for the `CustomConnector` connector type.
  final pulumi.Input<String?>? connectorLabel;
  /// Connector-specific configuration and credentials. See `connectorProfileConfig` Block for details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfig> connectorProfileConfig;
  /// Type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  final pulumi.Input<String> connectorType;
  /// ARN of the KMS key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final pulumi.Input<String?>? kmsArn;
  /// Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ConnectorProfileArgs].
  /// [connectionMode] Connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  /// [connectorLabel] Label of the connector. The label is unique for each `ConnectorRegistration` in your AWS account. Only needed if calling for the `CustomConnector` connector type.
  /// [connectorProfileConfig] Connector-specific configuration and credentials. See `connectorProfileConfig` Block for details.
  /// [connectorType] Type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  /// [kmsArn] ARN of the KMS key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  /// [name] Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ConnectorProfileArgs({
    required this.connectionMode,
    this.connectorLabel,
    required this.connectorProfileConfig,
    required this.connectorType,
    this.kmsArn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMode': connectionMode,
      'connectorLabel': ?connectorLabel,
      'connectorProfileConfig': pulumi.Input.mapInputValue<ConnectorProfileConnectorProfileConfig, Map<String, dynamic>>(connectorProfileConfig, (value) => value.toMap()),
      'connectorType': connectorType,
      'kmsArn': ?kmsArn,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConnectorProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileArgs(
      connectionMode: pulumi.Input.fromValue(map['connectionMode'] as String),
      connectorLabel: (() { final guardedValue = map['connectorLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorProfileConfig: pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfig.fromMap((map['connectorProfileConfig']! as Map).cast<String, dynamic>())),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      kmsArn: (() { final guardedValue = map['kmsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
