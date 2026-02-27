import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_client_permission_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_email_privacy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_hash_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_inheritance_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_monitoring_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sms_region_config_response.dart';
import 'tenant_args.dart';

/// Create a tenant. Requires write permission on the Agent project.
/// Auto-naming is currently not supported for this resource.
class Tenant extends pulumi.CustomResource {
  /// Whether to allow email/password user authentication.
  late final pulumi.Output<bool> allowPasswordSignup;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  late final pulumi.Output<bool> autodeleteAnonymousUsers;

  /// Options related to how clients making requests on behalf of a project should be configured.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse>
      client;

  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  late final pulumi.Output<bool> disableAuth;

  /// Display name of the tenant.
  late final pulumi.Output<String> displayName;

  /// Configuration for settings related to email privacy and public visibility.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse>
      emailPrivacyConfig;

  /// Whether to enable anonymous user authentication.
  late final pulumi.Output<bool> enableAnonymousUser;

  /// Whether to enable email link user authentication.
  late final pulumi.Output<bool> enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.
  late final pulumi.Output<GoogleCloudIdentitytoolkitAdminV2HashConfigResponse>
      hashConfig;

  /// Specify the settings that the tenant could inherit.
  late final pulumi.Output<GoogleCloudIdentitytoolkitAdminV2InheritanceResponse>
      inheritance;

  /// The tenant-level configuration of MFA options.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse>
      mfaConfig;

  /// Configuration related to monitoring project activity.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse>
      monitoring;

  /// Resource name of a tenant. For example: "projects/{project-id}/tenants/{tenant-id}"
  late final pulumi.Output<String> name;

  /// The tenant-level password policy config
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse>
      passwordPolicyConfig;
  late final pulumi.Output<String> project;

  /// The tenant-level reCAPTCHA config.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse>
      recaptchaConfig;

  /// Configures which regions are enabled for SMS verification code sending.
  late final pulumi
      .Output<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse>
      smsRegionConfig;

  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  late final pulumi.Output<Map<String, String>> testPhoneNumbers;

  Tenant(
    String name, {
    TenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:Tenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowPasswordSignup = registerOutput<bool>('allowPasswordSignup');
    this.autodeleteAnonymousUsers =
        registerOutput<bool>('autodeleteAnonymousUsers');
    this.client = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse>(
        'client');
    this.disableAuth = registerOutput<bool>('disableAuth');
    this.displayName = registerOutput<String>('displayName');
    this.emailPrivacyConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse>(
        'emailPrivacyConfig');
    this.enableAnonymousUser = registerOutput<bool>('enableAnonymousUser');
    this.enableEmailLinkSignin = registerOutput<bool>('enableEmailLinkSignin');
    this.hashConfig =
        registerOutput<GoogleCloudIdentitytoolkitAdminV2HashConfigResponse>(
            'hashConfig');
    this.inheritance =
        registerOutput<GoogleCloudIdentitytoolkitAdminV2InheritanceResponse>(
            'inheritance');
    this.mfaConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse>(
        'mfaConfig');
    this.monitoring = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse>(
        'monitoring');
    this.name = registerOutput<String>('name');
    this.passwordPolicyConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse>(
        'passwordPolicyConfig');
    this.project = registerOutput<String>('project');
    this.recaptchaConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse>(
        'recaptchaConfig');
    this.smsRegionConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse>(
        'smsRegionConfig');
    this.testPhoneNumbers =
        registerOutput<Map<String, String>>('testPhoneNumbers');
  }
}
