import 'package:pulumi/pulumi.dart';
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
class Tenant extends CustomResource {
  /// Whether to allow email/password user authentication.
  late final Output<bool> allowPasswordSignup;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  late final Output<bool> autodeleteAnonymousUsers;

  /// Options related to how clients making requests on behalf of a project should be configured.
  late final Output<
      GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse> client;

  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  late final Output<bool> disableAuth;

  /// Display name of the tenant.
  late final Output<String> displayName;

  /// Configuration for settings related to email privacy and public visibility.
  late final Output<GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse>
      emailPrivacyConfig;

  /// Whether to enable anonymous user authentication.
  late final Output<bool> enableAnonymousUser;

  /// Whether to enable email link user authentication.
  late final Output<bool> enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.
  late final Output<GoogleCloudIdentitytoolkitAdminV2HashConfigResponse>
      hashConfig;

  /// Specify the settings that the tenant could inherit.
  late final Output<GoogleCloudIdentitytoolkitAdminV2InheritanceResponse>
      inheritance;

  /// The tenant-level configuration of MFA options.
  late final Output<
      GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse> mfaConfig;

  /// Configuration related to monitoring project activity.
  late final Output<GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse>
      monitoring;

  /// Resource name of a tenant. For example: "projects/{project-id}/tenants/{tenant-id}"
  late final Output<String> name;

  /// The tenant-level password policy config
  late final Output<
          GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse>
      passwordPolicyConfig;
  late final Output<String> project;

  /// The tenant-level reCAPTCHA config.
  late final Output<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse>
      recaptchaConfig;

  /// Configures which regions are enabled for SMS verification code sending.
  late final Output<GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse>
      smsRegionConfig;

  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  late final Output<Map<String, String>> testPhoneNumbers;

  Tenant(
    String name, {
    TenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:Tenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowPasswordSignup = Output.createUnknown<bool>();
    this.autodeleteAnonymousUsers = Output.createUnknown<bool>();
    this.client = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse>();
    this.disableAuth = Output.createUnknown<bool>();
    this.displayName = Output.createUnknown<String>();
    this.emailPrivacyConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse>();
    this.enableAnonymousUser = Output.createUnknown<bool>();
    this.enableEmailLinkSignin = Output.createUnknown<bool>();
    this.hashConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2HashConfigResponse>();
    this.inheritance = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2InheritanceResponse>();
    this.mfaConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse>();
    this.monitoring = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse>();
    this.name = Output.createUnknown<String>();
    this.passwordPolicyConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.recaptchaConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse>();
    this.smsRegionConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse>();
    this.testPhoneNumbers = Output.createUnknown<Map<String, String>>();
  }
}
