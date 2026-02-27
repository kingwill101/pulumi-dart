// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_profile_connector_profile_config/connector_profile_connector_profile_config.dart';

/// The set of arguments for ConnectorProfile.
class ConnectorProfileArgs {
  /// Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  final pulumi.Input<String> connectionMode;

  /// The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for `CustomConnector` connector type.
  final pulumi.Input<String>? connectorLabel;

  /// Defines the connector-specific configuration and credentials. See Connector Profile Config for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfig>
      connectorProfileConfig;

  /// The type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  final pulumi.Input<String> connectorType;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final pulumi.Input<String>? kmsArn;
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  final pulumi.Input<String>? region;

  ConnectorProfileArgs({
    required this.connectionMode,
    this.connectorLabel,
    required this.connectorProfileConfig,
    required this.connectorType,
    this.kmsArn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionMode'] = connectionMode;
    final connectorLabelValue = connectorLabel;
    if (connectorLabelValue != null) {
      map['connectorLabel'] = connectorLabelValue;
    }
    map['connectorProfileConfig'] = pulumi.Input.mapInputValue<
        ConnectorProfileConnectorProfileConfig,
        Map<String, dynamic>>(connectorProfileConfig, (value) => value.toMap());
    map['connectorType'] = connectorType;
    final kmsArnValue = kmsArn;
    if (kmsArnValue != null) {
      map['kmsArn'] = kmsArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ConnectorProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileArgs(
      connectionMode: pulumi.Input.asInput<String>(map['connectionMode']),
      connectorLabel:
          pulumi.Input.asOptionalInput<String>(map['connectorLabel']),
      connectorProfileConfig:
          pulumi.Input.asInput<ConnectorProfileConnectorProfileConfig>(
              map['connectorProfileConfig']),
      connectorType: pulumi.Input.asInput<String>(map['connectorType']),
      kmsArn: pulumi.Input.asOptionalInput<String>(map['kmsArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
