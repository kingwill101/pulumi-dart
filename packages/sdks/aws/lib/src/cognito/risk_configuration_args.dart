// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_account_takeover_risk_configuration.dart';
import 'risk_configuration_compromised_credentials_risk_configuration.dart';
import 'risk_configuration_risk_exception_configuration.dart';

/// {@template pulumi_cognito_risk_configuration_risk_configuration_args_doc}
/// The set of arguments for RiskConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cognito_risk_configuration_risk_configuration_args_doc}
class RiskConfigurationArgs {
  /// The account takeover risk configuration. See details below.
  final pulumi.Input<RiskConfigurationAccountTakeoverRiskConfiguration>? accountTakeoverRiskConfiguration;
  /// The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  final pulumi.Input<String>? clientId;
  /// The compromised credentials risk configuration. See details below.
  final pulumi.Input<RiskConfigurationCompromisedCredentialsRiskConfiguration>? compromisedCredentialsRiskConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The configuration to override the risk decision. See details below.
  final pulumi.Input<RiskConfigurationRiskExceptionConfiguration>? riskExceptionConfiguration;
  /// The user pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [RiskConfigurationArgs].
  /// [accountTakeoverRiskConfiguration] The account takeover risk configuration. See details below.
  /// [clientId] The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  /// [compromisedCredentialsRiskConfiguration] The compromised credentials risk configuration. See details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [riskExceptionConfiguration] The configuration to override the risk decision. See details below.
  /// [userPoolId] The user pool ID.
  const RiskConfigurationArgs({
    this.accountTakeoverRiskConfiguration,
    this.clientId,
    this.compromisedCredentialsRiskConfiguration,
    this.region,
    this.riskExceptionConfiguration,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTakeoverRiskConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationAccountTakeoverRiskConfiguration, Map<String, dynamic>>(accountTakeoverRiskConfiguration, (value) => value.toMap()),
      'clientId': ?clientId,
      'compromisedCredentialsRiskConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationCompromisedCredentialsRiskConfiguration, Map<String, dynamic>>(compromisedCredentialsRiskConfiguration, (value) => value.toMap()),
      'region': ?region,
      'riskExceptionConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationRiskExceptionConfiguration, Map<String, dynamic>>(riskExceptionConfiguration, (value) => value.toMap()),
      'userPoolId': userPoolId,
    };
  }

  factory RiskConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationArgs(
      accountTakeoverRiskConfiguration: (() { final guardedValue = map['accountTakeoverRiskConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RiskConfigurationAccountTakeoverRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compromisedCredentialsRiskConfiguration: (() { final guardedValue = map['compromisedCredentialsRiskConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskExceptionConfiguration: (() { final guardedValue = map['riskExceptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RiskConfigurationRiskExceptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}

