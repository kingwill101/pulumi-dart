import 'package:pulumi/pulumi.dart';
import '../user_pool_account_recovery_setting/user_pool_account_recovery_setting.dart';
import '../user_pool_admin_create_user_config/user_pool_admin_create_user_config.dart';
import '../user_pool_device_configuration/user_pool_device_configuration.dart';
import '../user_pool_email_configuration/user_pool_email_configuration.dart';
import '../user_pool_email_mfa_configuration/user_pool_email_mfa_configuration.dart';
import '../user_pool_lambda_config/user_pool_lambda_config.dart';
import '../user_pool_password_policy/user_pool_password_policy.dart';
import '../user_pool_schema/user_pool_schema.dart';
import '../user_pool_sign_in_policy/user_pool_sign_in_policy.dart';
import '../user_pool_sms_configuration/user_pool_sms_configuration.dart';
import '../user_pool_software_token_mfa_configuration/user_pool_software_token_mfa_configuration.dart';
import '../user_pool_user_attribute_update_settings/user_pool_user_attribute_update_settings.dart';
import '../user_pool_user_pool_add_ons/user_pool_user_pool_add_ons.dart';
import '../user_pool_username_configuration/user_pool_username_configuration.dart';
import '../user_pool_verification_message_template/user_pool_verification_message_template.dart';
import '../user_pool_web_authn_configuration/user_pool_web_authn_configuration.dart';
import 'user_pool_args.dart';

/// Provides a Cognito User Pool resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ### Enabling SMS and Software Token Multi-Factor Authentication
///
///
///
/// ### Using Account Recovery Setting
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pools using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPool:UserPool pool us-west-2_abc123
/// ```
class UserPool extends CustomResource {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  late final Output<UserPoolAccountRecoverySetting?> accountRecoverySetting;

  /// Configuration block for creating a new user profile. Detailed below.
  late final Output<UserPoolAdminCreateUserConfig> adminCreateUserConfig;

  /// Attributes supported as an alias for this user pool. Valid values: `phone_number`, `email`, or `preferred_username`. Conflicts with `username_attributes`.
  late final Output<List<String>?> aliasAttributes;

  /// ARN of the user pool.
  late final Output<String> arn;

  /// Attributes to be auto-verified. Valid values: `email`, `phone_number`.
  late final Output<List<String>?> autoVerifiedAttributes;

  /// Date the user pool was created.
  late final Output<String> creationDate;

  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: `auth.example.com`.
  late final Output<String> customDomain;

  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  late final Output<String?> deletionProtection;

  /// Configuration block for the user pool's device tracking. Detailed below.
  late final Output<UserPoolDeviceConfiguration?> deviceConfiguration;

  /// Holds the domain prefix if the user pool has a domain associated with it.
  late final Output<String> domain;

  /// Configuration block for configuring email. Detailed below.
  late final Output<UserPoolEmailConfiguration?> emailConfiguration;

  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `account_recovery_setting` entries; requires an `email_configuration` configuration block. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  late final Output<UserPoolEmailMfaConfiguration?> emailMfaConfiguration;

  /// String representing the email verification message. Conflicts with `verification_message_template` configuration block `email_message` argument.
  late final Output<String> emailVerificationMessage;

  /// String representing the email verification subject. Conflicts with `verification_message_template` configuration block `email_subject` argument.
  late final Output<String> emailVerificationSubject;

  /// Endpoint name of the user pool. Example format: `cognito-idp.REGION.amazonaws.com/xxxx_yyyyy`
  late final Output<String> endpoint;

  /// A number estimating the size of the user pool.
  late final Output<int> estimatedNumberOfUsers;

  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  late final Output<UserPoolLambdaConfig?> lambdaConfig;

  /// Date the user pool was last modified.
  late final Output<String> lastModifiedDate;

  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured).
  late final Output<String?> mfaConfiguration;

  /// Name of the user pool.
  late final Output<String> name;

  /// Configuration block for information about the user pool password policy. Detailed below.
  late final Output<UserPoolPasswordPolicy> passwordPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  late final Output<List<UserPoolSchema>?> schemas;

  /// Configuration block for information about the user pool sign in policy. Detailed below.
  late final Output<UserPoolSignInPolicy> signInPolicy;

  /// String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  late final Output<String?> smsAuthenticationMessage;

  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfa_configuration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  late final Output<UserPoolSmsConfiguration> smsConfiguration;

  /// String representing the SMS verification message. Conflicts with `verification_message_template` configuration block `sms_message` argument.
  late final Output<String> smsVerificationMessage;

  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  late final Output<UserPoolSoftwareTokenMfaConfiguration?>
      softwareTokenMfaConfiguration;

  /// Map of tags to assign to the User Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for user attribute update settings. Detailed below.
  late final Output<UserPoolUserAttributeUpdateSettings?>
      userAttributeUpdateSettings;

  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  late final Output<UserPoolUserPoolAddOns?> userPoolAddOns;

  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  late final Output<String> userPoolTier;

  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `alias_attributes`.
  late final Output<List<String>?> usernameAttributes;

  /// Configuration block for username configuration. Detailed below.
  late final Output<UserPoolUsernameConfiguration> usernameConfiguration;

  /// Configuration block for verification message templates. Detailed below.
  late final Output<UserPoolVerificationMessageTemplate>
      verificationMessageTemplate;

  /// Configuration block for web authn configuration. Detailed below.
  late final Output<UserPoolWebAuthnConfiguration?> webAuthnConfiguration;

  UserPool(
    String name, {
    UserPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPool:UserPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountRecoverySetting =
        registerOutput<UserPoolAccountRecoverySetting?>(
            'accountRecoverySetting');
    this.adminCreateUserConfig =
        registerOutput<UserPoolAdminCreateUserConfig>('adminCreateUserConfig');
    this.aliasAttributes = registerOutput<List<String>?>('aliasAttributes');
    this.arn = registerOutput<String>('arn');
    this.autoVerifiedAttributes =
        registerOutput<List<String>?>('autoVerifiedAttributes');
    this.creationDate = registerOutput<String>('creationDate');
    this.customDomain = registerOutput<String>('customDomain');
    this.deletionProtection = registerOutput<String?>('deletionProtection');
    this.deviceConfiguration =
        registerOutput<UserPoolDeviceConfiguration?>('deviceConfiguration');
    this.domain = registerOutput<String>('domain');
    this.emailConfiguration =
        registerOutput<UserPoolEmailConfiguration?>('emailConfiguration');
    this.emailMfaConfiguration =
        registerOutput<UserPoolEmailMfaConfiguration?>('emailMfaConfiguration');
    this.emailVerificationMessage =
        registerOutput<String>('emailVerificationMessage');
    this.emailVerificationSubject =
        registerOutput<String>('emailVerificationSubject');
    this.endpoint = registerOutput<String>('endpoint');
    this.estimatedNumberOfUsers = registerOutput<int>('estimatedNumberOfUsers');
    this.lambdaConfig = registerOutput<UserPoolLambdaConfig?>('lambdaConfig');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.mfaConfiguration = registerOutput<String?>('mfaConfiguration');
    this.name = registerOutput<String>('name');
    this.passwordPolicy =
        registerOutput<UserPoolPasswordPolicy>('passwordPolicy');
    this.region = registerOutput<String>('region');
    this.schemas = registerOutput<List<UserPoolSchema>?>('schemas');
    this.signInPolicy = registerOutput<UserPoolSignInPolicy>('signInPolicy');
    this.smsAuthenticationMessage =
        registerOutput<String?>('smsAuthenticationMessage');
    this.smsConfiguration =
        registerOutput<UserPoolSmsConfiguration>('smsConfiguration');
    this.smsVerificationMessage =
        registerOutput<String>('smsVerificationMessage');
    this.softwareTokenMfaConfiguration =
        registerOutput<UserPoolSoftwareTokenMfaConfiguration?>(
            'softwareTokenMfaConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userAttributeUpdateSettings =
        registerOutput<UserPoolUserAttributeUpdateSettings?>(
            'userAttributeUpdateSettings');
    this.userPoolAddOns =
        registerOutput<UserPoolUserPoolAddOns?>('userPoolAddOns');
    this.userPoolTier = registerOutput<String>('userPoolTier');
    this.usernameAttributes =
        registerOutput<List<String>?>('usernameAttributes');
    this.usernameConfiguration =
        registerOutput<UserPoolUsernameConfiguration>('usernameConfiguration');
    this.verificationMessageTemplate =
        registerOutput<UserPoolVerificationMessageTemplate>(
            'verificationMessageTemplate');
    this.webAuthnConfiguration =
        registerOutput<UserPoolWebAuthnConfiguration?>('webAuthnConfiguration');
  }
}
