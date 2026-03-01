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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? connectionMode,
    pulumi.Output<String>? connectorLabel,
    pulumi.Output<ConnectorProfileConnectorProfileConfig>? connectorProfileConfig,
    pulumi.Output<String>? connectorType,
    pulumi.Output<String>? credentialsArn,
    pulumi.Output<String>? kmsArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
      connectorLabel = pulumi.Input.asOptionalInput<String>(connectorLabel),
      connectorProfileConfig = pulumi.Input.asOptionalInput<ConnectorProfileConnectorProfileConfig>(connectorProfileConfig),
      connectorType = pulumi.Input.asOptionalInput<String>(connectorType),
      credentialsArn = pulumi.Input.asOptionalInput<String>(credentialsArn),
      kmsArn = pulumi.Input.asOptionalInput<String>(kmsArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectionMode: map['connectionMode'] == null ? null : pulumi.Output.create<String>(map['connectionMode'] as String),
      connectorLabel: map['connectorLabel'] == null ? null : pulumi.Output.create<String>(map['connectorLabel'] as String),
      connectorProfileConfig: map['connectorProfileConfig'] == null ? null : pulumi.Output.create<ConnectorProfileConnectorProfileConfig>(ConnectorProfileConnectorProfileConfig.fromMap((map['connectorProfileConfig'] as Map).cast<String, dynamic>())),
      connectorType: map['connectorType'] == null ? null : pulumi.Output.create<String>(map['connectorType'] as String),
      credentialsArn: map['credentialsArn'] == null ? null : pulumi.Output.create<String>(map['credentialsArn'] as String),
      kmsArn: map['kmsArn'] == null ? null : pulumi.Output.create<String>(map['kmsArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

