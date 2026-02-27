import 'package:pulumi/pulumi.dart';
import '../connector_profile_connector_profile_config/connector_profile_connector_profile_config.dart';
import 'connector_profile_args.dart';

/// Provides an AppFlow connector profile resource.
///
/// For information about AppFlow flows, see the [Amazon AppFlow API Reference](https://docs.aws.amazon.com/appflow/1.0/APIReference/Welcome.html).
/// For specific information about creating an AppFlow connector profile, see the
/// [CreateConnectorProfile](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_CreateConnectorProfile.html) page in the Amazon AppFlow API Reference.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the Appflow connector profile.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AppFlow Connector Profile using the connector profile `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appflow/connectorProfile:ConnectorProfile example example-profile
/// ```
///
/// [1]: https://docs.aws.amazon.com/appflow/1.0/APIReference/Welcome.html
/// [2]: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_CreateConnectorProfile.html
class ConnectorProfile extends CustomResource {
  /// ARN of the connector profile.
  late final Output<String> arn;

  /// Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  late final Output<String> connectionMode;

  /// The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for `CustomConnector` connector type.
  late final Output<String?> connectorLabel;

  /// Defines the connector-specific configuration and credentials. See Connector Profile Config for more details.
  late final Output<ConnectorProfileConnectorProfileConfig>
      connectorProfileConfig;

  /// The type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  late final Output<String> connectorType;

  /// ARN of the connector profile credentials.
  late final Output<String> credentialsArn;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  late final Output<String> kmsArn;
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  late final Output<String> region;

  ConnectorProfile(
    String name, {
    ConnectorProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appflow/connectorProfile:ConnectorProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionMode = registerOutput<String>('connectionMode');
    this.connectorLabel = registerOutput<String?>('connectorLabel');
    this.connectorProfileConfig =
        registerOutput<ConnectorProfileConnectorProfileConfig>(
            'connectorProfileConfig');
    this.connectorType = registerOutput<String>('connectorType');
    this.credentialsArn = registerOutput<String>('credentialsArn');
    this.kmsArn = registerOutput<String>('kmsArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
