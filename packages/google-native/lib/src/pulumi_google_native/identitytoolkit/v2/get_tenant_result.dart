// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_client_permission_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_email_privacy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_hash_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_inheritance_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_monitoring_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sms_region_config_response.dart';

/// Result data returned by getTenant.
class GetTenantResult {
  /// Whether to allow email/password user authentication.
  final bool allowPasswordSignup;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  final bool autodeleteAnonymousUsers;

  /// Options related to how clients making requests on behalf of a project should be configured.
  final GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse client;

  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  final bool disableAuth;

  /// Display name of the tenant.
  final String displayName;

  /// Configuration for settings related to email privacy and public visibility.
  final GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse
      emailPrivacyConfig;

  /// Whether to enable anonymous user authentication.
  final bool enableAnonymousUser;

  /// Whether to enable email link user authentication.
  final bool enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.
  final GoogleCloudIdentitytoolkitAdminV2HashConfigResponse hashConfig;

  /// Specify the settings that the tenant could inherit.
  final GoogleCloudIdentitytoolkitAdminV2InheritanceResponse inheritance;

  /// The tenant-level configuration of MFA options.
  final GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse
      mfaConfig;

  /// Configuration related to monitoring project activity.
  final GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse monitoring;

  /// Resource name of a tenant. For example: "projects/{project-id}/tenants/{tenant-id}"
  final String name;

  /// The tenant-level password policy config
  final GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse
      passwordPolicyConfig;

  /// The tenant-level reCAPTCHA config.
  final GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse
      recaptchaConfig;

  /// Configures which regions are enabled for SMS verification code sending.
  final GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse
      smsRegionConfig;

  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  final Map<String, String> testPhoneNumbers;

  GetTenantResult({
    required this.allowPasswordSignup,
    required this.autodeleteAnonymousUsers,
    required this.client,
    required this.disableAuth,
    required this.displayName,
    required this.emailPrivacyConfig,
    required this.enableAnonymousUser,
    required this.enableEmailLinkSignin,
    required this.hashConfig,
    required this.inheritance,
    required this.mfaConfig,
    required this.monitoring,
    required this.name,
    required this.passwordPolicyConfig,
    required this.recaptchaConfig,
    required this.smsRegionConfig,
    required this.testPhoneNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowPasswordSignup'] = allowPasswordSignup;
    map['autodeleteAnonymousUsers'] = autodeleteAnonymousUsers;
    map['client'] = client.toMap();
    map['disableAuth'] = disableAuth;
    map['displayName'] = displayName;
    map['emailPrivacyConfig'] = emailPrivacyConfig.toMap();
    map['enableAnonymousUser'] = enableAnonymousUser;
    map['enableEmailLinkSignin'] = enableEmailLinkSignin;
    map['hashConfig'] = hashConfig.toMap();
    map['inheritance'] = inheritance.toMap();
    map['mfaConfig'] = mfaConfig.toMap();
    map['monitoring'] = monitoring.toMap();
    map['name'] = name;
    map['passwordPolicyConfig'] = passwordPolicyConfig.toMap();
    map['recaptchaConfig'] = recaptchaConfig.toMap();
    map['smsRegionConfig'] = smsRegionConfig.toMap();
    map['testPhoneNumbers'] = testPhoneNumbers;
    return map;
  }

  factory GetTenantResult.fromMap(Map<String, dynamic> map) {
    return GetTenantResult(
      allowPasswordSignup: map['allowPasswordSignup'] as bool,
      autodeleteAnonymousUsers: map['autodeleteAnonymousUsers'] as bool,
      client: GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse
          .fromMap((map['client'] as Map).cast<String, dynamic>()),
      disableAuth: map['disableAuth'] as bool,
      displayName: map['displayName'] as String,
      emailPrivacyConfig:
          GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse.fromMap(
              (map['emailPrivacyConfig'] as Map).cast<String, dynamic>()),
      enableAnonymousUser: map['enableAnonymousUser'] as bool,
      enableEmailLinkSignin: map['enableEmailLinkSignin'] as bool,
      hashConfig: GoogleCloudIdentitytoolkitAdminV2HashConfigResponse.fromMap(
          (map['hashConfig'] as Map).cast<String, dynamic>()),
      inheritance: GoogleCloudIdentitytoolkitAdminV2InheritanceResponse.fromMap(
          (map['inheritance'] as Map).cast<String, dynamic>()),
      mfaConfig: GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse
          .fromMap((map['mfaConfig'] as Map).cast<String, dynamic>()),
      monitoring:
          GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      passwordPolicyConfig:
          GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse.fromMap(
              (map['passwordPolicyConfig'] as Map).cast<String, dynamic>()),
      recaptchaConfig:
          GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse.fromMap(
              (map['recaptchaConfig'] as Map).cast<String, dynamic>()),
      smsRegionConfig:
          GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse.fromMap(
              (map['smsRegionConfig'] as Map).cast<String, dynamic>()),
      testPhoneNumbers: (map['testPhoneNumbers'] as Map).cast<String, String>(),
    );
  }
}
