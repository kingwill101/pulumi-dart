// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config.dart';

/// Input properties used for looking up and filtering ConnectorProfile resources.
class ConnectorProfileState {
  /// ARN of the connector profile.
  final pulumi.Input<String>? arn;
  /// Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  final pulumi.Input<String>? connectionMode;
  /// The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for `CustomConnector` connector type.
  final pulumi.Input<String>? connectorLabel;
  /// Defines the connector-specific configuration and credentials. See Connector Profile Config for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfig>? connectorProfileConfig;
  /// The type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  final pulumi.Input<String>? connectorType;
  /// ARN of the connector profile credentials.
  final pulumi.Input<String>? credentialsArn;
  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final pulumi.Input<String>? kmsArn;
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectorProfileState].
  /// [arn] ARN of the connector profile.
  /// [connectionMode] Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  /// [connectorLabel] The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for `CustomConnector` connector type.
  /// [connectorProfileConfig] Defines the connector-specific configuration and credentials. See Connector Profile Config for more details.
  /// [connectorType] The type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  /// [credentialsArn] ARN of the connector profile credentials.
  /// [kmsArn] ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  /// [name] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConnectorProfileState({
    this.arn,
    this.connectionMode,
    this.connectorLabel,
    this.connectorProfileConfig,
    this.connectorType,
    this.credentialsArn,
    this.kmsArn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionMode': ?connectionMode,
      'connectorLabel': ?connectorLabel,
      'connectorProfileConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfig, Map<String, dynamic>>(connectorProfileConfig, (value) => value.toMap()),
      'connectorType': ?connectorType,
      'credentialsArn': ?credentialsArn,
      'kmsArn': ?kmsArn,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConnectorProfileState.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorLabel: (() { final guardedValue = map['connectorLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorProfileConfig: (() { final guardedValue = map['connectorProfileConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialsArn: (() { final guardedValue = map['credentialsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsArn: (() { final guardedValue = map['kmsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

