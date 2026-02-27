import 'package:pulumi/pulumi.dart' as pulumi;
import '../risk_configuration_account_takeover_risk_configuration/risk_configuration_account_takeover_risk_configuration.dart';
import '../risk_configuration_compromised_credentials_risk_configuration/risk_configuration_compromised_credentials_risk_configuration.dart';
import '../risk_configuration_risk_exception_configuration/risk_configuration_risk_exception_configuration.dart';
import 'risk_configuration_args.dart';

/// Provides a Cognito Risk Configuration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Import using the user pool ID and Client ID separated by a `:`:
///
///
/// **Using `pulumi import` to import** Cognito Risk Configurations using the user pool ID or the user pool ID and Client Id separated by a `:`. For example:
///
/// Import using the user pool ID:
///
/// ```sh
/// $ pulumi import aws:cognito/riskConfiguration:RiskConfiguration main example
/// ```
///
/// Import using the user pool ID and Client ID separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:cognito/riskConfiguration:RiskConfiguration main example:example
/// ```
class RiskConfiguration extends pulumi.CustomResource {
  /// The account takeover risk configuration. See details below.
  late final pulumi.Output<RiskConfigurationAccountTakeoverRiskConfiguration?>
      accountTakeoverRiskConfiguration;

  /// The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  late final pulumi.Output<String?> clientId;

  /// The compromised credentials risk configuration. See details below.
  late final pulumi
      .Output<RiskConfigurationCompromisedCredentialsRiskConfiguration?>
      compromisedCredentialsRiskConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The configuration to override the risk decision. See details below.
  late final pulumi.Output<RiskConfigurationRiskExceptionConfiguration?>
      riskExceptionConfiguration;

  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;

  RiskConfiguration(
    String name, {
    RiskConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/riskConfiguration:RiskConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountTakeoverRiskConfiguration =
        registerOutput<RiskConfigurationAccountTakeoverRiskConfiguration?>(
            'accountTakeoverRiskConfiguration');
    this.clientId = registerOutput<String?>('clientId');
    this.compromisedCredentialsRiskConfiguration = registerOutput<
            RiskConfigurationCompromisedCredentialsRiskConfiguration?>(
        'compromisedCredentialsRiskConfiguration');
    this.region = registerOutput<String>('region');
    this.riskExceptionConfiguration =
        registerOutput<RiskConfigurationRiskExceptionConfiguration?>(
            'riskExceptionConfiguration');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
