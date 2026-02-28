// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_client_permission_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_email_privacy_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_inheritance.dart';
import 'google_cloud_identitytoolkit_admin_v2_monitoring_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_sms_region_config.dart';

/// {@template pulumi_identitytoolkit_v2_tenant_args_doc}
/// The set of arguments for Tenant.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_tenant_args_doc}
class TenantArgs {
  /// Whether to allow email/password user authentication.
  final pulumi.Input<bool>? allowPasswordSignup;
  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  final pulumi.Input<bool>? autodeleteAnonymousUsers;
  /// Options related to how clients making requests on behalf of a project should be configured.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig>? client;
  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  final pulumi.Input<bool>? disableAuth;
  /// Display name of the tenant.
  final pulumi.Input<String>? displayName;
  /// Configuration for settings related to email privacy and public visibility.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig>? emailPrivacyConfig;
  /// Whether to enable anonymous user authentication.
  final pulumi.Input<bool>? enableAnonymousUser;
  /// Whether to enable email link user authentication.
  final pulumi.Input<bool>? enableEmailLinkSignin;
  /// Specify the settings that the tenant could inherit.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2Inheritance>? inheritance;
  /// The tenant-level configuration of MFA options.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig>? mfaConfig;
  /// Configuration related to monitoring project activity.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2MonitoringConfig>? monitoring;
  /// The tenant-level password policy config
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig>? passwordPolicyConfig;
  final pulumi.Input<String>? project;
  /// The tenant-level reCAPTCHA config.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig>? recaptchaConfig;
  /// Configures which regions are enabled for SMS verification code sending.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig>? smsRegionConfig;
  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  final pulumi.Input<Map<String, String>>? testPhoneNumbers;

  /// Creates a new [TenantArgs].
  /// [allowPasswordSignup] Whether to allow email/password user authentication.
  /// [autodeleteAnonymousUsers] Whether anonymous users will be auto-deleted after a period of 30 days.
  /// [client] Options related to how clients making requests on behalf of a project should be configured.
  /// [disableAuth] Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  /// [displayName] Display name of the tenant.
  /// [emailPrivacyConfig] Configuration for settings related to email privacy and public visibility.
  /// [enableAnonymousUser] Whether to enable anonymous user authentication.
  /// [enableEmailLinkSignin] Whether to enable email link user authentication.
  /// [inheritance] Specify the settings that the tenant could inherit.
  /// [mfaConfig] The tenant-level configuration of MFA options.
  /// [monitoring] Configuration related to monitoring project activity.
  /// [passwordPolicyConfig] The tenant-level password policy config
  /// [project] Optional.
  /// [recaptchaConfig] The tenant-level reCAPTCHA config.
  /// [smsRegionConfig] Configures which regions are enabled for SMS verification code sending.
  /// [testPhoneNumbers] A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  TenantArgs({
    bool? allowPasswordSignup,
    bool? autodeleteAnonymousUsers,
    GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig? client,
    bool? disableAuth,
    String? displayName,
    GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig? emailPrivacyConfig,
    bool? enableAnonymousUser,
    bool? enableEmailLinkSignin,
    GoogleCloudIdentitytoolkitAdminV2Inheritance? inheritance,
    GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfaConfig,
    GoogleCloudIdentitytoolkitAdminV2MonitoringConfig? monitoring,
    GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig? passwordPolicyConfig,
    String? project,
    GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig? recaptchaConfig,
    GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig? smsRegionConfig,
    Map<String, String>? testPhoneNumbers,
  }) :
      allowPasswordSignup = pulumi.Input.asOptionalInput<bool>(allowPasswordSignup),
      autodeleteAnonymousUsers = pulumi.Input.asOptionalInput<bool>(autodeleteAnonymousUsers),
      client = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig>(client),
      disableAuth = pulumi.Input.asOptionalInput<bool>(disableAuth),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      emailPrivacyConfig = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig>(emailPrivacyConfig),
      enableAnonymousUser = pulumi.Input.asOptionalInput<bool>(enableAnonymousUser),
      enableEmailLinkSignin = pulumi.Input.asOptionalInput<bool>(enableEmailLinkSignin),
      inheritance = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2Inheritance>(inheritance),
      mfaConfig = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig>(mfaConfig),
      monitoring = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2MonitoringConfig>(monitoring),
      passwordPolicyConfig = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig>(passwordPolicyConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      recaptchaConfig = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig>(recaptchaConfig),
      smsRegionConfig = pulumi.Input.asOptionalInput<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig>(smsRegionConfig),
      testPhoneNumbers = pulumi.Input.asOptionalInput<Map<String, String>>(testPhoneNumbers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPasswordSignup': ?allowPasswordSignup,
      'autodeleteAnonymousUsers': ?autodeleteAnonymousUsers,
      'client': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig, Map<String, dynamic>>(client, (value) => value.toMap()),
      'disableAuth': ?disableAuth,
      'displayName': ?displayName,
      'emailPrivacyConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig, Map<String, dynamic>>(emailPrivacyConfig, (value) => value.toMap()),
      'enableAnonymousUser': ?enableAnonymousUser,
      'enableEmailLinkSignin': ?enableEmailLinkSignin,
      'inheritance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2Inheritance, Map<String, dynamic>>(inheritance, (value) => value.toMap()),
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2MonitoringConfig, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'passwordPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig, Map<String, dynamic>>(passwordPolicyConfig, (value) => value.toMap()),
      'project': ?project,
      'recaptchaConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig, Map<String, dynamic>>(recaptchaConfig, (value) => value.toMap()),
      'smsRegionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig, Map<String, dynamic>>(smsRegionConfig, (value) => value.toMap()),
      'testPhoneNumbers': ?testPhoneNumbers,
    };
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      allowPasswordSignup: map['allowPasswordSignup'] == null ? null : map['allowPasswordSignup'] as bool,
      autodeleteAnonymousUsers: map['autodeleteAnonymousUsers'] == null ? null : map['autodeleteAnonymousUsers'] as bool,
      client: map['client'] == null ? null : GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig.fromMap((map['client'] as Map).cast<String, dynamic>()),
      disableAuth: map['disableAuth'] == null ? null : map['disableAuth'] as bool,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      emailPrivacyConfig: map['emailPrivacyConfig'] == null ? null : GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromMap((map['emailPrivacyConfig'] as Map).cast<String, dynamic>()),
      enableAnonymousUser: map['enableAnonymousUser'] == null ? null : map['enableAnonymousUser'] as bool,
      enableEmailLinkSignin: map['enableEmailLinkSignin'] == null ? null : map['enableEmailLinkSignin'] as bool,
      inheritance: map['inheritance'] == null ? null : GoogleCloudIdentitytoolkitAdminV2Inheritance.fromMap((map['inheritance'] as Map).cast<String, dynamic>()),
      mfaConfig: map['mfaConfig'] == null ? null : GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromMap((map['mfaConfig'] as Map).cast<String, dynamic>()),
      monitoring: map['monitoring'] == null ? null : GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      passwordPolicyConfig: map['passwordPolicyConfig'] == null ? null : GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromMap((map['passwordPolicyConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      recaptchaConfig: map['recaptchaConfig'] == null ? null : GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromMap((map['recaptchaConfig'] as Map).cast<String, dynamic>()),
      smsRegionConfig: map['smsRegionConfig'] == null ? null : GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromMap((map['smsRegionConfig'] as Map).cast<String, dynamic>()),
      testPhoneNumbers: map['testPhoneNumbers'] == null ? null : (map['testPhoneNumbers'] as Map).cast<String, String>(),
    );
  }
}

