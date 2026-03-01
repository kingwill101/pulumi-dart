// ignore_for_file: unused_element, unnecessary_cast

import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_block_email.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_mfa_email.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_no_action_email.dart';

class RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration {
  /// Email template used when a detected risk event is blocked. See notify email type below.
  final RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail? blockEmail;
  /// The email address that is sending the email. The address must be either individually verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES.
  final String? from;
  /// The multi-factor authentication (MFA) email template used when MFA is challenged as part of a detected risk. See notify email type below.
  final RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail? mfaEmail;
  /// The email template used when a detected risk event is allowed. See notify email type below.
  final RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail? noActionEmail;
  /// The destination to which the receiver of an email should reply to.
  final String? replyTo;
  /// The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. This identity permits Amazon Cognito to send for the email address specified in the From parameter.
  final String sourceArn;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration].
  /// [blockEmail] Email template used when a detected risk event is blocked. See notify email type below.
  /// [from] The email address that is sending the email. The address must be either individually verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES.
  /// [mfaEmail] The multi-factor authentication (MFA) email template used when MFA is challenged as part of a detected risk. See notify email type below.
  /// [noActionEmail] The email template used when a detected risk event is allowed. See notify email type below.
  /// [replyTo] The destination to which the receiver of an email should reply to.
  /// [sourceArn] The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. This identity permits Amazon Cognito to send for the email address specified in the From parameter.
  RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration({
    this.blockEmail,
    this.from,
    this.mfaEmail,
    this.noActionEmail,
    this.replyTo,
    required this.sourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockEmail': ?blockEmail == null ? null : blockEmail!.toMap(),
      'from': ?from,
      'mfaEmail': ?mfaEmail == null ? null : mfaEmail!.toMap(),
      'noActionEmail': ?noActionEmail == null ? null : noActionEmail!.toMap(),
      'replyTo': ?replyTo,
      'sourceArn': sourceArn,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration(
      blockEmail: map['blockEmail'] == null ? null : RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail.fromMap((map['blockEmail'] as Map).cast<String, dynamic>()),
      from: map['from'] == null ? null : map['from'] as String,
      mfaEmail: map['mfaEmail'] == null ? null : RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail.fromMap((map['mfaEmail'] as Map).cast<String, dynamic>()),
      noActionEmail: map['noActionEmail'] == null ? null : RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail.fromMap((map['noActionEmail'] as Map).cast<String, dynamic>()),
      replyTo: map['replyTo'] == null ? null : map['replyTo'] as String,
      sourceArn: map['sourceArn'] as String,
    );
  }
}

