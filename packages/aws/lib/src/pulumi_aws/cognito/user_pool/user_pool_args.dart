// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for UserPool.
class UserPoolArgs {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  final Input<UserPoolAccountRecoverySetting>? accountRecoverySetting;

  /// Configuration block for creating a new user profile. Detailed below.
  final Input<UserPoolAdminCreateUserConfig>? adminCreateUserConfig;

  /// Attributes supported as an alias for this user pool. Valid values: `phone_number`, `email`, or `preferred_username`. Conflicts with `username_attributes`.
  final Input<List<String>>? aliasAttributes;

  /// Attributes to be auto-verified. Valid values: `email`, `phone_number`.
  final Input<List<String>>? autoVerifiedAttributes;

  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  final Input<String>? deletionProtection;

  /// Configuration block for the user pool's device tracking. Detailed below.
  final Input<UserPoolDeviceConfiguration>? deviceConfiguration;

  /// Configuration block for configuring email. Detailed below.
  final Input<UserPoolEmailConfiguration>? emailConfiguration;

  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `account_recovery_setting` entries; requires an `email_configuration` configuration block. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  final Input<UserPoolEmailMfaConfiguration>? emailMfaConfiguration;

  /// String representing the email verification message. Conflicts with `verification_message_template` configuration block `email_message` argument.
  final Input<String>? emailVerificationMessage;

  /// String representing the email verification subject. Conflicts with `verification_message_template` configuration block `email_subject` argument.
  final Input<String>? emailVerificationSubject;

  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  final Input<UserPoolLambdaConfig>? lambdaConfig;

  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured).
  final Input<String>? mfaConfiguration;

  /// Name of the user pool.
  final Input<String>? name;

  /// Configuration block for information about the user pool password policy. Detailed below.
  final Input<UserPoolPasswordPolicy>? passwordPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  final Input<List<UserPoolSchema>>? schemas;

  /// Configuration block for information about the user pool sign in policy. Detailed below.
  final Input<UserPoolSignInPolicy>? signInPolicy;

  /// String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  final Input<String>? smsAuthenticationMessage;

  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfa_configuration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  final Input<UserPoolSmsConfiguration>? smsConfiguration;

  /// String representing the SMS verification message. Conflicts with `verification_message_template` configuration block `sms_message` argument.
  final Input<String>? smsVerificationMessage;

  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  final Input<UserPoolSoftwareTokenMfaConfiguration>?
      softwareTokenMfaConfiguration;

  /// Map of tags to assign to the User Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for user attribute update settings. Detailed below.
  final Input<UserPoolUserAttributeUpdateSettings>? userAttributeUpdateSettings;

  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  final Input<UserPoolUserPoolAddOns>? userPoolAddOns;

  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  final Input<String>? userPoolTier;

  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `alias_attributes`.
  final Input<List<String>>? usernameAttributes;

  /// Configuration block for username configuration. Detailed below.
  final Input<UserPoolUsernameConfiguration>? usernameConfiguration;

  /// Configuration block for verification message templates. Detailed below.
  final Input<UserPoolVerificationMessageTemplate>? verificationMessageTemplate;

  /// Configuration block for web authn configuration. Detailed below.
  final Input<UserPoolWebAuthnConfiguration>? webAuthnConfiguration;

  UserPoolArgs({
    this.accountRecoverySetting,
    this.adminCreateUserConfig,
    this.aliasAttributes,
    this.autoVerifiedAttributes,
    this.deletionProtection,
    this.deviceConfiguration,
    this.emailConfiguration,
    this.emailMfaConfiguration,
    this.emailVerificationMessage,
    this.emailVerificationSubject,
    this.lambdaConfig,
    this.mfaConfiguration,
    this.name,
    this.passwordPolicy,
    this.region,
    this.schemas,
    this.signInPolicy,
    this.smsAuthenticationMessage,
    this.smsConfiguration,
    this.smsVerificationMessage,
    this.softwareTokenMfaConfiguration,
    this.tags,
    this.userAttributeUpdateSettings,
    this.userPoolAddOns,
    this.userPoolTier,
    this.usernameAttributes,
    this.usernameConfiguration,
    this.verificationMessageTemplate,
    this.webAuthnConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountRecoverySettingValue = accountRecoverySetting;
    if (accountRecoverySettingValue != null) {
      map['accountRecoverySetting'] = Input.mapOptionalInputValue<
              UserPoolAccountRecoverySetting, Map<String, dynamic>>(
          accountRecoverySettingValue, (value) => value.toMap());
    }
    final adminCreateUserConfigValue = adminCreateUserConfig;
    if (adminCreateUserConfigValue != null) {
      map['adminCreateUserConfig'] = Input.mapOptionalInputValue<
              UserPoolAdminCreateUserConfig, Map<String, dynamic>>(
          adminCreateUserConfigValue, (value) => value.toMap());
    }
    final aliasAttributesValue = aliasAttributes;
    if (aliasAttributesValue != null) {
      map['aliasAttributes'] = aliasAttributesValue;
    }
    final autoVerifiedAttributesValue = autoVerifiedAttributes;
    if (autoVerifiedAttributesValue != null) {
      map['autoVerifiedAttributes'] = autoVerifiedAttributesValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final deviceConfigurationValue = deviceConfiguration;
    if (deviceConfigurationValue != null) {
      map['deviceConfiguration'] = Input.mapOptionalInputValue<
              UserPoolDeviceConfiguration, Map<String, dynamic>>(
          deviceConfigurationValue, (value) => value.toMap());
    }
    final emailConfigurationValue = emailConfiguration;
    if (emailConfigurationValue != null) {
      map['emailConfiguration'] = Input.mapOptionalInputValue<
              UserPoolEmailConfiguration, Map<String, dynamic>>(
          emailConfigurationValue, (value) => value.toMap());
    }
    final emailMfaConfigurationValue = emailMfaConfiguration;
    if (emailMfaConfigurationValue != null) {
      map['emailMfaConfiguration'] = Input.mapOptionalInputValue<
              UserPoolEmailMfaConfiguration, Map<String, dynamic>>(
          emailMfaConfigurationValue, (value) => value.toMap());
    }
    final emailVerificationMessageValue = emailVerificationMessage;
    if (emailVerificationMessageValue != null) {
      map['emailVerificationMessage'] = emailVerificationMessageValue;
    }
    final emailVerificationSubjectValue = emailVerificationSubject;
    if (emailVerificationSubjectValue != null) {
      map['emailVerificationSubject'] = emailVerificationSubjectValue;
    }
    final lambdaConfigValue = lambdaConfig;
    if (lambdaConfigValue != null) {
      map['lambdaConfig'] = Input.mapOptionalInputValue<UserPoolLambdaConfig,
          Map<String, dynamic>>(lambdaConfigValue, (value) => value.toMap());
    }
    final mfaConfigurationValue = mfaConfiguration;
    if (mfaConfigurationValue != null) {
      map['mfaConfiguration'] = mfaConfigurationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final passwordPolicyValue = passwordPolicy;
    if (passwordPolicyValue != null) {
      map['passwordPolicy'] = Input.mapOptionalInputValue<
          UserPoolPasswordPolicy,
          Map<String, dynamic>>(passwordPolicyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final schemasValue = schemas;
    if (schemasValue != null) {
      map['schemas'] = Input.mapOptionalInputValue<List<UserPoolSchema>,
              List<Map<String, dynamic>>>(
          schemasValue,
          (value) => Input.encodeList<UserPoolSchema, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final signInPolicyValue = signInPolicy;
    if (signInPolicyValue != null) {
      map['signInPolicy'] = Input.mapOptionalInputValue<UserPoolSignInPolicy,
          Map<String, dynamic>>(signInPolicyValue, (value) => value.toMap());
    }
    final smsAuthenticationMessageValue = smsAuthenticationMessage;
    if (smsAuthenticationMessageValue != null) {
      map['smsAuthenticationMessage'] = smsAuthenticationMessageValue;
    }
    final smsConfigurationValue = smsConfiguration;
    if (smsConfigurationValue != null) {
      map['smsConfiguration'] = Input.mapOptionalInputValue<
              UserPoolSmsConfiguration, Map<String, dynamic>>(
          smsConfigurationValue, (value) => value.toMap());
    }
    final smsVerificationMessageValue = smsVerificationMessage;
    if (smsVerificationMessageValue != null) {
      map['smsVerificationMessage'] = smsVerificationMessageValue;
    }
    final softwareTokenMfaConfigurationValue = softwareTokenMfaConfiguration;
    if (softwareTokenMfaConfigurationValue != null) {
      map['softwareTokenMfaConfiguration'] = Input.mapOptionalInputValue<
              UserPoolSoftwareTokenMfaConfiguration, Map<String, dynamic>>(
          softwareTokenMfaConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userAttributeUpdateSettingsValue = userAttributeUpdateSettings;
    if (userAttributeUpdateSettingsValue != null) {
      map['userAttributeUpdateSettings'] = Input.mapOptionalInputValue<
              UserPoolUserAttributeUpdateSettings, Map<String, dynamic>>(
          userAttributeUpdateSettingsValue, (value) => value.toMap());
    }
    final userPoolAddOnsValue = userPoolAddOns;
    if (userPoolAddOnsValue != null) {
      map['userPoolAddOns'] = Input.mapOptionalInputValue<
          UserPoolUserPoolAddOns,
          Map<String, dynamic>>(userPoolAddOnsValue, (value) => value.toMap());
    }
    final userPoolTierValue = userPoolTier;
    if (userPoolTierValue != null) {
      map['userPoolTier'] = userPoolTierValue;
    }
    final usernameAttributesValue = usernameAttributes;
    if (usernameAttributesValue != null) {
      map['usernameAttributes'] = usernameAttributesValue;
    }
    final usernameConfigurationValue = usernameConfiguration;
    if (usernameConfigurationValue != null) {
      map['usernameConfiguration'] = Input.mapOptionalInputValue<
              UserPoolUsernameConfiguration, Map<String, dynamic>>(
          usernameConfigurationValue, (value) => value.toMap());
    }
    final verificationMessageTemplateValue = verificationMessageTemplate;
    if (verificationMessageTemplateValue != null) {
      map['verificationMessageTemplate'] = Input.mapOptionalInputValue<
              UserPoolVerificationMessageTemplate, Map<String, dynamic>>(
          verificationMessageTemplateValue, (value) => value.toMap());
    }
    final webAuthnConfigurationValue = webAuthnConfiguration;
    if (webAuthnConfigurationValue != null) {
      map['webAuthnConfiguration'] = Input.mapOptionalInputValue<
              UserPoolWebAuthnConfiguration, Map<String, dynamic>>(
          webAuthnConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserPoolArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolArgs(
      accountRecoverySetting:
          Input.asOptionalInput<UserPoolAccountRecoverySetting>(
              map['accountRecoverySetting']),
      adminCreateUserConfig:
          Input.asOptionalInput<UserPoolAdminCreateUserConfig>(
              map['adminCreateUserConfig']),
      aliasAttributes:
          Input.asOptionalInput<List<String>>(map['aliasAttributes']),
      autoVerifiedAttributes:
          Input.asOptionalInput<List<String>>(map['autoVerifiedAttributes']),
      deletionProtection:
          Input.asOptionalInput<String>(map['deletionProtection']),
      deviceConfiguration: Input.asOptionalInput<UserPoolDeviceConfiguration>(
          map['deviceConfiguration']),
      emailConfiguration: Input.asOptionalInput<UserPoolEmailConfiguration>(
          map['emailConfiguration']),
      emailMfaConfiguration:
          Input.asOptionalInput<UserPoolEmailMfaConfiguration>(
              map['emailMfaConfiguration']),
      emailVerificationMessage:
          Input.asOptionalInput<String>(map['emailVerificationMessage']),
      emailVerificationSubject:
          Input.asOptionalInput<String>(map['emailVerificationSubject']),
      lambdaConfig:
          Input.asOptionalInput<UserPoolLambdaConfig>(map['lambdaConfig']),
      mfaConfiguration: Input.asOptionalInput<String>(map['mfaConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      passwordPolicy:
          Input.asOptionalInput<UserPoolPasswordPolicy>(map['passwordPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      schemas: Input.asOptionalInput<List<UserPoolSchema>>(map['schemas']),
      signInPolicy:
          Input.asOptionalInput<UserPoolSignInPolicy>(map['signInPolicy']),
      smsAuthenticationMessage:
          Input.asOptionalInput<String>(map['smsAuthenticationMessage']),
      smsConfiguration: Input.asOptionalInput<UserPoolSmsConfiguration>(
          map['smsConfiguration']),
      smsVerificationMessage:
          Input.asOptionalInput<String>(map['smsVerificationMessage']),
      softwareTokenMfaConfiguration:
          Input.asOptionalInput<UserPoolSoftwareTokenMfaConfiguration>(
              map['softwareTokenMfaConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userAttributeUpdateSettings:
          Input.asOptionalInput<UserPoolUserAttributeUpdateSettings>(
              map['userAttributeUpdateSettings']),
      userPoolAddOns:
          Input.asOptionalInput<UserPoolUserPoolAddOns>(map['userPoolAddOns']),
      userPoolTier: Input.asOptionalInput<String>(map['userPoolTier']),
      usernameAttributes:
          Input.asOptionalInput<List<String>>(map['usernameAttributes']),
      usernameConfiguration:
          Input.asOptionalInput<UserPoolUsernameConfiguration>(
              map['usernameConfiguration']),
      verificationMessageTemplate:
          Input.asOptionalInput<UserPoolVerificationMessageTemplate>(
              map['verificationMessageTemplate']),
      webAuthnConfiguration:
          Input.asOptionalInput<UserPoolWebAuthnConfiguration>(
              map['webAuthnConfiguration']),
    );
  }
}
