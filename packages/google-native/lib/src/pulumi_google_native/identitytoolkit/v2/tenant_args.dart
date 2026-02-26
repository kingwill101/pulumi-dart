// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_identitytoolkit_admin_v2_client_permission_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_email_privacy_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_inheritance.dart';
import 'google_cloud_identitytoolkit_admin_v2_monitoring_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_sms_region_config.dart';

/// The set of arguments for Tenant.
class TenantArgs {
  /// Whether to allow email/password user authentication.
  final Input<bool>? allowPasswordSignup;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  final Input<bool>? autodeleteAnonymousUsers;

  /// Options related to how clients making requests on behalf of a project should be configured.
  final Input<GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig>? client;

  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  final Input<bool>? disableAuth;

  /// Display name of the tenant.
  final Input<String>? displayName;

  /// Configuration for settings related to email privacy and public visibility.
  final Input<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig>?
      emailPrivacyConfig;

  /// Whether to enable anonymous user authentication.
  final Input<bool>? enableAnonymousUser;

  /// Whether to enable email link user authentication.
  final Input<bool>? enableEmailLinkSignin;

  /// Specify the settings that the tenant could inherit.
  final Input<GoogleCloudIdentitytoolkitAdminV2Inheritance>? inheritance;

  /// The tenant-level configuration of MFA options.
  final Input<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig>?
      mfaConfig;

  /// Configuration related to monitoring project activity.
  final Input<GoogleCloudIdentitytoolkitAdminV2MonitoringConfig>? monitoring;

  /// The tenant-level password policy config
  final Input<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig>?
      passwordPolicyConfig;
  final Input<String>? project;

  /// The tenant-level reCAPTCHA config.
  final Input<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig>?
      recaptchaConfig;

  /// Configures which regions are enabled for SMS verification code sending.
  final Input<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig>?
      smsRegionConfig;

  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  final Input<Map<String, String>>? testPhoneNumbers;

  TenantArgs({
    this.allowPasswordSignup,
    this.autodeleteAnonymousUsers,
    this.client,
    this.disableAuth,
    this.displayName,
    this.emailPrivacyConfig,
    this.enableAnonymousUser,
    this.enableEmailLinkSignin,
    this.inheritance,
    this.mfaConfig,
    this.monitoring,
    this.passwordPolicyConfig,
    this.project,
    this.recaptchaConfig,
    this.smsRegionConfig,
    this.testPhoneNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPasswordSignupValue = allowPasswordSignup;
    if (allowPasswordSignupValue != null) {
      map['allowPasswordSignup'] = allowPasswordSignupValue;
    }
    final autodeleteAnonymousUsersValue = autodeleteAnonymousUsers;
    if (autodeleteAnonymousUsersValue != null) {
      map['autodeleteAnonymousUsers'] = autodeleteAnonymousUsersValue;
    }
    final clientValue = client;
    if (clientValue != null) {
      map['client'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig,
          Map<String, dynamic>>(clientValue, (value) => value.toMap());
    }
    final disableAuthValue = disableAuth;
    if (disableAuthValue != null) {
      map['disableAuth'] = disableAuthValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final emailPrivacyConfigValue = emailPrivacyConfig;
    if (emailPrivacyConfigValue != null) {
      map['emailPrivacyConfig'] = Input.mapOptionalInputValue<
              GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig,
              Map<String, dynamic>>(
          emailPrivacyConfigValue, (value) => value.toMap());
    }
    final enableAnonymousUserValue = enableAnonymousUser;
    if (enableAnonymousUserValue != null) {
      map['enableAnonymousUser'] = enableAnonymousUserValue;
    }
    final enableEmailLinkSigninValue = enableEmailLinkSignin;
    if (enableEmailLinkSigninValue != null) {
      map['enableEmailLinkSignin'] = enableEmailLinkSigninValue;
    }
    final inheritanceValue = inheritance;
    if (inheritanceValue != null) {
      map['inheritance'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2Inheritance,
          Map<String, dynamic>>(inheritanceValue, (value) => value.toMap());
    }
    final mfaConfigValue = mfaConfig;
    if (mfaConfigValue != null) {
      map['mfaConfig'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig,
          Map<String, dynamic>>(mfaConfigValue, (value) => value.toMap());
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2MonitoringConfig,
          Map<String, dynamic>>(monitoringValue, (value) => value.toMap());
    }
    final passwordPolicyConfigValue = passwordPolicyConfig;
    if (passwordPolicyConfigValue != null) {
      map['passwordPolicyConfig'] = Input.mapOptionalInputValue<
              GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig,
              Map<String, dynamic>>(
          passwordPolicyConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recaptchaConfigValue = recaptchaConfig;
    if (recaptchaConfigValue != null) {
      map['recaptchaConfig'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig,
          Map<String, dynamic>>(recaptchaConfigValue, (value) => value.toMap());
    }
    final smsRegionConfigValue = smsRegionConfig;
    if (smsRegionConfigValue != null) {
      map['smsRegionConfig'] = Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig,
          Map<String, dynamic>>(smsRegionConfigValue, (value) => value.toMap());
    }
    final testPhoneNumbersValue = testPhoneNumbers;
    if (testPhoneNumbersValue != null) {
      map['testPhoneNumbers'] = testPhoneNumbersValue;
    }
    return map;
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      allowPasswordSignup:
          Input.asOptionalInput<bool>(map['allowPasswordSignup']),
      autodeleteAnonymousUsers:
          Input.asOptionalInput<bool>(map['autodeleteAnonymousUsers']),
      client: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig>(
          map['client']),
      disableAuth: Input.asOptionalInput<bool>(map['disableAuth']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      emailPrivacyConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig>(
          map['emailPrivacyConfig']),
      enableAnonymousUser:
          Input.asOptionalInput<bool>(map['enableAnonymousUser']),
      enableEmailLinkSignin:
          Input.asOptionalInput<bool>(map['enableEmailLinkSignin']),
      inheritance:
          Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2Inheritance>(
              map['inheritance']),
      mfaConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig>(
          map['mfaConfig']),
      monitoring: Input.asOptionalInput<
          GoogleCloudIdentitytoolkitAdminV2MonitoringConfig>(map['monitoring']),
      passwordPolicyConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig>(
          map['passwordPolicyConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      recaptchaConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig>(
          map['recaptchaConfig']),
      smsRegionConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig>(
          map['smsRegionConfig']),
      testPhoneNumbers:
          Input.asOptionalInput<Map<String, String>>(map['testPhoneNumbers']),
    );
  }
}
