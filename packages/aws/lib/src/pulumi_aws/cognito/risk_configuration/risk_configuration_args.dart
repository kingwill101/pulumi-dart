// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../risk_configuration_account_takeover_risk_configuration/risk_configuration_account_takeover_risk_configuration.dart';
import '../risk_configuration_compromised_credentials_risk_configuration/risk_configuration_compromised_credentials_risk_configuration.dart';
import '../risk_configuration_risk_exception_configuration/risk_configuration_risk_exception_configuration.dart';

/// The set of arguments for RiskConfiguration.
class RiskConfigurationArgs {
  /// The account takeover risk configuration. See details below.
  final Input<RiskConfigurationAccountTakeoverRiskConfiguration>?
      accountTakeoverRiskConfiguration;

  /// The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  final Input<String>? clientId;

  /// The compromised credentials risk configuration. See details below.
  final Input<RiskConfigurationCompromisedCredentialsRiskConfiguration>?
      compromisedCredentialsRiskConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The configuration to override the risk decision. See details below.
  final Input<RiskConfigurationRiskExceptionConfiguration>?
      riskExceptionConfiguration;

  /// The user pool ID.
  final Input<String> userPoolId;

  RiskConfigurationArgs({
    this.accountTakeoverRiskConfiguration,
    this.clientId,
    this.compromisedCredentialsRiskConfiguration,
    this.region,
    this.riskExceptionConfiguration,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountTakeoverRiskConfigurationValue =
        accountTakeoverRiskConfiguration;
    if (accountTakeoverRiskConfigurationValue != null) {
      map['accountTakeoverRiskConfiguration'] = Input.mapOptionalInputValue<
              RiskConfigurationAccountTakeoverRiskConfiguration,
              Map<String, dynamic>>(
          accountTakeoverRiskConfigurationValue, (value) => value.toMap());
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final compromisedCredentialsRiskConfigurationValue =
        compromisedCredentialsRiskConfiguration;
    if (compromisedCredentialsRiskConfigurationValue != null) {
      map['compromisedCredentialsRiskConfiguration'] =
          Input.mapOptionalInputValue<
                  RiskConfigurationCompromisedCredentialsRiskConfiguration,
                  Map<String, dynamic>>(
              compromisedCredentialsRiskConfigurationValue,
              (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final riskExceptionConfigurationValue = riskExceptionConfiguration;
    if (riskExceptionConfigurationValue != null) {
      map['riskExceptionConfiguration'] = Input.mapOptionalInputValue<
              RiskConfigurationRiskExceptionConfiguration,
              Map<String, dynamic>>(
          riskExceptionConfigurationValue, (value) => value.toMap());
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory RiskConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationArgs(
      accountTakeoverRiskConfiguration: Input.asOptionalInput<
              RiskConfigurationAccountTakeoverRiskConfiguration>(
          map['accountTakeoverRiskConfiguration']),
      clientId: Input.asOptionalInput<String>(map['clientId']),
      compromisedCredentialsRiskConfiguration: Input.asOptionalInput<
              RiskConfigurationCompromisedCredentialsRiskConfiguration>(
          map['compromisedCredentialsRiskConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      riskExceptionConfiguration:
          Input.asOptionalInput<RiskConfigurationRiskExceptionConfiguration>(
              map['riskExceptionConfiguration']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
