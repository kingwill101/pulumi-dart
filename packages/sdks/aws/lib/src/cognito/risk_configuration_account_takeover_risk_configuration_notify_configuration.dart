// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_block_email.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_mfa_email.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration_no_action_email.dart';

class RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration {
  /// Email template used when a detected risk event is blocked. See notify email type below.
  final pulumi.Input<
    RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail
  >?
  blockEmail;

  /// The email address that is sending the email. The address must be either individually verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES.
  final pulumi.Input<String>? from;

  /// The multi-factor authentication (MFA) email template used when MFA is challenged as part of a detected risk. See notify email type below.
  final pulumi.Input<
    RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail
  >?
  mfaEmail;

  /// The email template used when a detected risk event is allowed. See notify email type below.
  final pulumi.Input<
    RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail
  >?
  noActionEmail;

  /// The destination to which the receiver of an email should reply to.
  final pulumi.Input<String>? replyTo;

  /// The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. This identity permits Amazon Cognito to send for the email address specified in the From parameter.
  final pulumi.Input<String> sourceArn;

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
      'blockEmail':
          ?pulumi.Input.mapOptionalInputValue<
            RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail,
            Map<String, dynamic>
          >(blockEmail, (value) => value.toMap()),
      'from': ?from,
      'mfaEmail':
          ?pulumi.Input.mapOptionalInputValue<
            RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail,
            Map<String, dynamic>
          >(mfaEmail, (value) => value.toMap()),
      'noActionEmail':
          ?pulumi.Input.mapOptionalInputValue<
            RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail,
            Map<String, dynamic>
          >(noActionEmail, (value) => value.toMap()),
      'replyTo': ?replyTo,
      'sourceArn': sourceArn,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration(
      blockEmail: (() {
        final guardedValue = map['blockEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      from: (() {
        final guardedValue = map['from'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mfaEmail: (() {
        final guardedValue = map['mfaEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      noActionEmail: (() {
        final guardedValue = map['noActionEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replyTo: (() {
        final guardedValue = map['replyTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
    );
  }
}
