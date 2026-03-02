// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_account_takeover_risk_configuration.dart';
import 'risk_configuration_compromised_credentials_risk_configuration.dart';
import 'risk_configuration_risk_exception_configuration.dart';

/// Input properties used for looking up and filtering RiskConfiguration resources.
class RiskConfigurationState {
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
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [RiskConfigurationState].
  /// [accountTakeoverRiskConfiguration] The account takeover risk configuration. See details below.
  /// [clientId] The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  /// [compromisedCredentialsRiskConfiguration] The compromised credentials risk configuration. See details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [riskExceptionConfiguration] The configuration to override the risk decision. See details below.
  /// [userPoolId] The user pool ID.
  RiskConfigurationState({
    this.accountTakeoverRiskConfiguration,
    this.clientId,
    this.compromisedCredentialsRiskConfiguration,
    this.region,
    this.riskExceptionConfiguration,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTakeoverRiskConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationAccountTakeoverRiskConfiguration, Map<String, dynamic>>(accountTakeoverRiskConfiguration, (value) => value.toMap()),
      'clientId': ?clientId,
      'compromisedCredentialsRiskConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationCompromisedCredentialsRiskConfiguration, Map<String, dynamic>>(compromisedCredentialsRiskConfiguration, (value) => value.toMap()),
      'region': ?region,
      'riskExceptionConfiguration': ?pulumi.Input.mapOptionalInputValue<RiskConfigurationRiskExceptionConfiguration, Map<String, dynamic>>(riskExceptionConfiguration, (value) => value.toMap()),
      'userPoolId': ?userPoolId,
    };
  }

  factory RiskConfigurationState.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationState(
      accountTakeoverRiskConfiguration: map['accountTakeoverRiskConfiguration'] == null ? null : ((RiskConfigurationAccountTakeoverRiskConfiguration.fromMap((map['accountTakeoverRiskConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      clientId: map['clientId'] == null ? null : ((map['clientId'] as String).input()).input(),
      compromisedCredentialsRiskConfiguration: map['compromisedCredentialsRiskConfiguration'] == null ? null : ((RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap((map['compromisedCredentialsRiskConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      riskExceptionConfiguration: map['riskExceptionConfiguration'] == null ? null : ((RiskConfigurationRiskExceptionConfiguration.fromMap((map['riskExceptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      userPoolId: map['userPoolId'] == null ? null : ((map['userPoolId'] as String).input()).input(),
    );
  }
}

