// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_account_recovery_setting.dart';
import 'user_pool_admin_create_user_config.dart';
import 'user_pool_device_configuration.dart';
import 'user_pool_email_configuration.dart';
import 'user_pool_email_mfa_configuration.dart';
import 'user_pool_lambda_config.dart';
import 'user_pool_password_policy.dart';
import 'user_pool_schema.dart';
import 'user_pool_sign_in_policy.dart';
import 'user_pool_sms_configuration.dart';
import 'user_pool_software_token_mfa_configuration.dart';
import 'user_pool_user_attribute_update_settings.dart';
import 'user_pool_user_pool_add_ons.dart';
import 'user_pool_username_configuration.dart';
import 'user_pool_verification_message_template.dart';
import 'user_pool_web_authn_configuration.dart';

/// {@template pulumi_cognito_user_pool_user_pool_args_doc}
/// The set of arguments for UserPool.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_pool_user_pool_args_doc}
class UserPoolArgs {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  final pulumi.Input<UserPoolAccountRecoverySetting>? accountRecoverySetting;
  /// Configuration block for creating a new user profile. Detailed below.
  final pulumi.Input<UserPoolAdminCreateUserConfig>? adminCreateUserConfig;
  /// Attributes supported as an alias for this user pool. Valid values: `phone_number`, `email`, or `preferred_username`. Conflicts with `username_attributes`.
  final pulumi.Input<List<String>>? aliasAttributes;
  /// Attributes to be auto-verified. Valid values: `email`, `phone_number`.
  final pulumi.Input<List<String>>? autoVerifiedAttributes;
  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  final pulumi.Input<String>? deletionProtection;
  /// Configuration block for the user pool's device tracking. Detailed below.
  final pulumi.Input<UserPoolDeviceConfiguration>? deviceConfiguration;
  /// Configuration block for configuring email. Detailed below.
  final pulumi.Input<UserPoolEmailConfiguration>? emailConfiguration;
  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `account_recovery_setting` entries; requires an `email_configuration` configuration block. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  final pulumi.Input<UserPoolEmailMfaConfiguration>? emailMfaConfiguration;
  /// String representing the email verification message. Conflicts with `verification_message_template` configuration block `email_message` argument.
  final pulumi.Input<String>? emailVerificationMessage;
  /// String representing the email verification subject. Conflicts with `verification_message_template` configuration block `email_subject` argument.
  final pulumi.Input<String>? emailVerificationSubject;
  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  final pulumi.Input<UserPoolLambdaConfig>? lambdaConfig;
  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured).
  final pulumi.Input<String>? mfaConfiguration;
  /// Name of the user pool.
  final pulumi.Input<String>? name;
  /// Configuration block for information about the user pool password policy. Detailed below.
  final pulumi.Input<UserPoolPasswordPolicy>? passwordPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  final pulumi.Input<List<UserPoolSchema>>? schemas;
  /// Configuration block for information about the user pool sign in policy. Detailed below.
  final pulumi.Input<UserPoolSignInPolicy>? signInPolicy;
  /// String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  final pulumi.Input<String>? smsAuthenticationMessage;
  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfa_configuration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  final pulumi.Input<UserPoolSmsConfiguration>? smsConfiguration;
  /// String representing the SMS verification message. Conflicts with `verification_message_template` configuration block `sms_message` argument.
  final pulumi.Input<String>? smsVerificationMessage;
  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  final pulumi.Input<UserPoolSoftwareTokenMfaConfiguration>? softwareTokenMfaConfiguration;
  /// Map of tags to assign to the User Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for user attribute update settings. Detailed below.
  final pulumi.Input<UserPoolUserAttributeUpdateSettings>? userAttributeUpdateSettings;
  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  final pulumi.Input<UserPoolUserPoolAddOns>? userPoolAddOns;
  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  final pulumi.Input<String>? userPoolTier;
  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `alias_attributes`.
  final pulumi.Input<List<String>>? usernameAttributes;
  /// Configuration block for username configuration. Detailed below.
  final pulumi.Input<UserPoolUsernameConfiguration>? usernameConfiguration;
  /// Configuration block for verification message templates. Detailed below.
  final pulumi.Input<UserPoolVerificationMessageTemplate>? verificationMessageTemplate;
  /// Configuration block for web authn configuration. Detailed below.
  final pulumi.Input<UserPoolWebAuthnConfiguration>? webAuthnConfiguration;

  /// Creates a new [UserPoolArgs].
  /// [accountRecoverySetting] Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  /// [adminCreateUserConfig] Configuration block for creating a new user profile. Detailed below.
  /// [aliasAttributes] Attributes supported as an alias for this user pool. Valid values: `phone_number`, `email`, or `preferred_username`. Conflicts with `username_attributes`.
  /// [autoVerifiedAttributes] Attributes to be auto-verified. Valid values: `email`, `phone_number`.
  /// [deletionProtection] When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  /// [deviceConfiguration] Configuration block for the user pool's device tracking. Detailed below.
  /// [emailConfiguration] Configuration block for configuring email. Detailed below.
  /// [emailMfaConfiguration] Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `account_recovery_setting` entries; requires an `email_configuration` configuration block. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  /// [emailVerificationMessage] String representing the email verification message. Conflicts with `verification_message_template` configuration block `email_message` argument.
  /// [emailVerificationSubject] String representing the email verification subject. Conflicts with `verification_message_template` configuration block `email_subject` argument.
  /// [lambdaConfig] Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  /// [mfaConfiguration] Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured).
  /// [name] Name of the user pool.
  /// [passwordPolicy] Configuration block for information about the user pool password policy. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemas] Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  /// [signInPolicy] Configuration block for information about the user pool sign in policy. Detailed below.
  /// [smsAuthenticationMessage] String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  /// [smsConfiguration] Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfa_configuration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  /// [smsVerificationMessage] String representing the SMS verification message. Conflicts with `verification_message_template` configuration block `sms_message` argument.
  /// [softwareTokenMfaConfiguration] Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  /// [tags] Map of tags to assign to the User Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userAttributeUpdateSettings] Configuration block for user attribute update settings. Detailed below.
  /// [userPoolAddOns] Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  /// [userPoolTier] The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  /// [usernameAttributes] Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `alias_attributes`.
  /// [usernameConfiguration] Configuration block for username configuration. Detailed below.
  /// [verificationMessageTemplate] Configuration block for verification message templates. Detailed below.
  /// [webAuthnConfiguration] Configuration block for web authn configuration. Detailed below.
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
    return <String, dynamic>{
      'accountRecoverySetting': ?pulumi.Input.mapOptionalInputValue<UserPoolAccountRecoverySetting, Map<String, dynamic>>(accountRecoverySetting, (value) => value.toMap()),
      'adminCreateUserConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolAdminCreateUserConfig, Map<String, dynamic>>(adminCreateUserConfig, (value) => value.toMap()),
      'aliasAttributes': ?aliasAttributes,
      'autoVerifiedAttributes': ?autoVerifiedAttributes,
      'deletionProtection': ?deletionProtection,
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolDeviceConfiguration, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'emailConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolEmailConfiguration, Map<String, dynamic>>(emailConfiguration, (value) => value.toMap()),
      'emailMfaConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolEmailMfaConfiguration, Map<String, dynamic>>(emailMfaConfiguration, (value) => value.toMap()),
      'emailVerificationMessage': ?emailVerificationMessage,
      'emailVerificationSubject': ?emailVerificationSubject,
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
      'mfaConfiguration': ?mfaConfiguration,
      'name': ?name,
      'passwordPolicy': ?pulumi.Input.mapOptionalInputValue<UserPoolPasswordPolicy, Map<String, dynamic>>(passwordPolicy, (value) => value.toMap()),
      'region': ?region,
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<UserPoolSchema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<UserPoolSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'signInPolicy': ?pulumi.Input.mapOptionalInputValue<UserPoolSignInPolicy, Map<String, dynamic>>(signInPolicy, (value) => value.toMap()),
      'smsAuthenticationMessage': ?smsAuthenticationMessage,
      'smsConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolSmsConfiguration, Map<String, dynamic>>(smsConfiguration, (value) => value.toMap()),
      'smsVerificationMessage': ?smsVerificationMessage,
      'softwareTokenMfaConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolSoftwareTokenMfaConfiguration, Map<String, dynamic>>(softwareTokenMfaConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'userAttributeUpdateSettings': ?pulumi.Input.mapOptionalInputValue<UserPoolUserAttributeUpdateSettings, Map<String, dynamic>>(userAttributeUpdateSettings, (value) => value.toMap()),
      'userPoolAddOns': ?pulumi.Input.mapOptionalInputValue<UserPoolUserPoolAddOns, Map<String, dynamic>>(userPoolAddOns, (value) => value.toMap()),
      'userPoolTier': ?userPoolTier,
      'usernameAttributes': ?usernameAttributes,
      'usernameConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolUsernameConfiguration, Map<String, dynamic>>(usernameConfiguration, (value) => value.toMap()),
      'verificationMessageTemplate': ?pulumi.Input.mapOptionalInputValue<UserPoolVerificationMessageTemplate, Map<String, dynamic>>(verificationMessageTemplate, (value) => value.toMap()),
      'webAuthnConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolWebAuthnConfiguration, Map<String, dynamic>>(webAuthnConfiguration, (value) => value.toMap()),
    };
  }

  factory UserPoolArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolArgs(
      accountRecoverySetting: map['accountRecoverySetting'] == null ? null : ((UserPoolAccountRecoverySetting.fromMap((map['accountRecoverySetting']! as Map).cast<String, dynamic>())).input()).input(),
      adminCreateUserConfig: map['adminCreateUserConfig'] == null ? null : ((UserPoolAdminCreateUserConfig.fromMap((map['adminCreateUserConfig']! as Map).cast<String, dynamic>())).input()).input(),
      aliasAttributes: map['aliasAttributes'] == null ? null : (((map['aliasAttributes'] as List).cast<String>()).input()).input(),
      autoVerifiedAttributes: map['autoVerifiedAttributes'] == null ? null : (((map['autoVerifiedAttributes'] as List).cast<String>()).input()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : ((map['deletionProtection'] as String).input()).input(),
      deviceConfiguration: map['deviceConfiguration'] == null ? null : ((UserPoolDeviceConfiguration.fromMap((map['deviceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      emailConfiguration: map['emailConfiguration'] == null ? null : ((UserPoolEmailConfiguration.fromMap((map['emailConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      emailMfaConfiguration: map['emailMfaConfiguration'] == null ? null : ((UserPoolEmailMfaConfiguration.fromMap((map['emailMfaConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      emailVerificationMessage: map['emailVerificationMessage'] == null ? null : ((map['emailVerificationMessage'] as String).input()).input(),
      emailVerificationSubject: map['emailVerificationSubject'] == null ? null : ((map['emailVerificationSubject'] as String).input()).input(),
      lambdaConfig: map['lambdaConfig'] == null ? null : ((UserPoolLambdaConfig.fromMap((map['lambdaConfig']! as Map).cast<String, dynamic>())).input()).input(),
      mfaConfiguration: map['mfaConfiguration'] == null ? null : ((map['mfaConfiguration'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      passwordPolicy: map['passwordPolicy'] == null ? null : ((UserPoolPasswordPolicy.fromMap((map['passwordPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schemas: map['schemas'] == null ? null : ((pulumi.Input.decodeList<UserPoolSchema>(map['schemas']!, (value) => UserPoolSchema.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      signInPolicy: map['signInPolicy'] == null ? null : ((UserPoolSignInPolicy.fromMap((map['signInPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      smsAuthenticationMessage: map['smsAuthenticationMessage'] == null ? null : ((map['smsAuthenticationMessage'] as String).input()).input(),
      smsConfiguration: map['smsConfiguration'] == null ? null : ((UserPoolSmsConfiguration.fromMap((map['smsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      smsVerificationMessage: map['smsVerificationMessage'] == null ? null : ((map['smsVerificationMessage'] as String).input()).input(),
      softwareTokenMfaConfiguration: map['softwareTokenMfaConfiguration'] == null ? null : ((UserPoolSoftwareTokenMfaConfiguration.fromMap((map['softwareTokenMfaConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      userAttributeUpdateSettings: map['userAttributeUpdateSettings'] == null ? null : ((UserPoolUserAttributeUpdateSettings.fromMap((map['userAttributeUpdateSettings']! as Map).cast<String, dynamic>())).input()).input(),
      userPoolAddOns: map['userPoolAddOns'] == null ? null : ((UserPoolUserPoolAddOns.fromMap((map['userPoolAddOns']! as Map).cast<String, dynamic>())).input()).input(),
      userPoolTier: map['userPoolTier'] == null ? null : ((map['userPoolTier'] as String).input()).input(),
      usernameAttributes: map['usernameAttributes'] == null ? null : (((map['usernameAttributes'] as List).cast<String>()).input()).input(),
      usernameConfiguration: map['usernameConfiguration'] == null ? null : ((UserPoolUsernameConfiguration.fromMap((map['usernameConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      verificationMessageTemplate: map['verificationMessageTemplate'] == null ? null : ((UserPoolVerificationMessageTemplate.fromMap((map['verificationMessageTemplate']! as Map).cast<String, dynamic>())).input()).input(),
      webAuthnConfiguration: map['webAuthnConfiguration'] == null ? null : ((UserPoolWebAuthnConfiguration.fromMap((map['webAuthnConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

