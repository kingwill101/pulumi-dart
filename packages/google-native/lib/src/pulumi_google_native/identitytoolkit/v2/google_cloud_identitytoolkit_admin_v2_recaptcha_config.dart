// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config_email_password_enforcement_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_managed_rule.dart';

/// The reCAPTCHA Enterprise integration config.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig {
  /// The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  final GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState?
      emailPasswordEnforcementState;

  /// The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  final List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>?
      managedRules;

  /// Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  final bool? useAccountDefender;

  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig({
    this.emailPasswordEnforcementState,
    this.managedRules,
    this.useAccountDefender,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailPasswordEnforcementStateValue = emailPasswordEnforcementState;
    if (emailPasswordEnforcementStateValue != null) {
      map['emailPasswordEnforcementState'] =
          emailPasswordEnforcementStateValue.value;
    }
    final managedRulesValue = managedRules;
    if (managedRulesValue != null) {
      map['managedRules'] = pulumi.Input.encodeList<
          GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule,
          Map<String, dynamic>>(managedRulesValue, (value) => value.toMap());
    }
    final useAccountDefenderValue = useAccountDefender;
    if (useAccountDefenderValue != null) {
      map['useAccountDefender'] = useAccountDefenderValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(
      emailPasswordEnforcementState: map['emailPasswordEnforcementState'] ==
              null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState
              .fromValue(map['emailPasswordEnforcementState'] as String),
      managedRules: map['managedRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>(
              map['managedRules'],
              (value) =>
                  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      useAccountDefender: map['useAccountDefender'] == null
          ? null
          : map['useAccountDefender'] as bool,
    );
  }
}
