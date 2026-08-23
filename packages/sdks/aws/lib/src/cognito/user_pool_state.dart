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

/// Input properties used for looking up and filtering UserPool resources.
class UserPoolState {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  final pulumi.Input<UserPoolAccountRecoverySetting>? accountRecoverySetting;
  /// Configuration block for creating a new user profile. Detailed below.
  final pulumi.Input<UserPoolAdminCreateUserConfig>? adminCreateUserConfig;
  /// Attributes supported as an alias for this user pool. Valid values: `phoneNumber`, `email`, or `preferredUsername`. Conflicts with `usernameAttributes`.
  final pulumi.Input<List<String>>? aliasAttributes;
  /// ARN of the user pool.
  final pulumi.Input<String>? arn;
  /// Attributes to be auto-verified. Valid values: `email`, `phoneNumber`.
  final pulumi.Input<List<String>>? autoVerifiedAttributes;
  /// Date the user pool was created.
  final pulumi.Input<String>? creationDate;
  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: `auth.example.com`.
  final pulumi.Input<String>? customDomain;
  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  final pulumi.Input<String>? deletionProtection;
  /// Configuration block for the user pool's device tracking. Detailed below.
  final pulumi.Input<UserPoolDeviceConfiguration>? deviceConfiguration;
  /// Holds the domain prefix if the user pool has a domain associated with it.
  final pulumi.Input<String>? domain;
  /// Configuration block for configuring email. Detailed below.
  final pulumi.Input<UserPoolEmailConfiguration>? emailConfiguration;
  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `accountRecoverySetting` entries; requires an `emailConfiguration` configuration block. Effective only when `mfaConfiguration` is `ON` or `OPTIONAL`. Detailed below.
  final pulumi.Input<UserPoolEmailMfaConfiguration>? emailMfaConfiguration;
  /// String representing the email verification message. Conflicts with `verificationMessageTemplate` configuration block `emailMessage` argument.
  final pulumi.Input<String>? emailVerificationMessage;
  /// String representing the email verification subject. Conflicts with `verificationMessageTemplate` configuration block `emailSubject` argument.
  final pulumi.Input<String>? emailVerificationSubject;
  /// Endpoint name of the user pool. Example format: `cognito-idp.REGION.amazonaws.com/xxxx_yyyyy`
  final pulumi.Input<String>? endpoint;
  /// A number estimating the size of the user pool.
  final pulumi.Input<int>? estimatedNumberOfUsers;
  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  final pulumi.Input<UserPoolLambdaConfig>? lambdaConfig;
  /// Date the user pool was last modified.
  final pulumi.Input<String>? lastModifiedDate;
  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `emailMfaConfiguration`, `smsConfiguration` or `softwareTokenMfaConfiguration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `emailMfaConfiguration`, `smsConfiguration` or `softwareTokenMfaConfiguration` to be configured).
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
  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfaConfiguration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  final pulumi.Input<UserPoolSmsConfiguration>? smsConfiguration;
  /// String representing the SMS verification message. Conflicts with `verificationMessageTemplate` configuration block `smsMessage` argument.
  final pulumi.Input<String>? smsVerificationMessage;
  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfaConfiguration` is `ON` or `OPTIONAL`. Detailed below.
  final pulumi.Input<UserPoolSoftwareTokenMfaConfiguration>? softwareTokenMfaConfiguration;
  /// Map of tags to assign to the User Pool. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for user attribute update settings. Detailed below.
  final pulumi.Input<UserPoolUserAttributeUpdateSettings>? userAttributeUpdateSettings;
  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  final pulumi.Input<UserPoolUserPoolAddOns>? userPoolAddOns;
  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  final pulumi.Input<String>? userPoolTier;
  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `aliasAttributes`.
  final pulumi.Input<List<String>>? usernameAttributes;
  /// Configuration block for username configuration. Detailed below.
  final pulumi.Input<UserPoolUsernameConfiguration>? usernameConfiguration;
  /// Configuration block for verification message templates. Detailed below.
  final pulumi.Input<UserPoolVerificationMessageTemplate>? verificationMessageTemplate;
  /// Configuration block for web authn configuration. Detailed below.
  final pulumi.Input<UserPoolWebAuthnConfiguration>? webAuthnConfiguration;

  /// Creates a new [UserPoolState].
  /// [accountRecoverySetting] Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  /// [adminCreateUserConfig] Configuration block for creating a new user profile. Detailed below.
  /// [aliasAttributes] Attributes supported as an alias for this user pool. Valid values: `phoneNumber`, `email`, or `preferredUsername`. Conflicts with `usernameAttributes`.
  /// [arn] ARN of the user pool.
  /// [autoVerifiedAttributes] Attributes to be auto-verified. Valid values: `email`, `phoneNumber`.
  /// [creationDate] Date the user pool was created.
  /// [customDomain] A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: `auth.example.com`.
  /// [deletionProtection] When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  /// [deviceConfiguration] Configuration block for the user pool's device tracking. Detailed below.
  /// [domain] Holds the domain prefix if the user pool has a domain associated with it.
  /// [emailConfiguration] Configuration block for configuring email. Detailed below.
  /// [emailMfaConfiguration] Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `accountRecoverySetting` entries; requires an `emailConfiguration` configuration block. Effective only when `mfaConfiguration` is `ON` or `OPTIONAL`. Detailed below.
  /// [emailVerificationMessage] String representing the email verification message. Conflicts with `verificationMessageTemplate` configuration block `emailMessage` argument.
  /// [emailVerificationSubject] String representing the email verification subject. Conflicts with `verificationMessageTemplate` configuration block `emailSubject` argument.
  /// [endpoint] Endpoint name of the user pool. Example format: `cognito-idp.REGION.amazonaws.com/xxxx_yyyyy`
  /// [estimatedNumberOfUsers] A number estimating the size of the user pool.
  /// [lambdaConfig] Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  /// [lastModifiedDate] Date the user pool was last modified.
  /// [mfaConfiguration] Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `emailMfaConfiguration`, `smsConfiguration` or `softwareTokenMfaConfiguration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `emailMfaConfiguration`, `smsConfiguration` or `softwareTokenMfaConfiguration` to be configured).
  /// [name] Name of the user pool.
  /// [passwordPolicy] Configuration block for information about the user pool password policy. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemas] Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  /// [signInPolicy] Configuration block for information about the user pool sign in policy. Detailed below.
  /// [smsAuthenticationMessage] String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  /// [smsConfiguration] Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfaConfiguration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  /// [smsVerificationMessage] String representing the SMS verification message. Conflicts with `verificationMessageTemplate` configuration block `smsMessage` argument.
  /// [softwareTokenMfaConfiguration] Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfaConfiguration` is `ON` or `OPTIONAL`. Detailed below.
  /// [tags] Map of tags to assign to the User Pool. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [userAttributeUpdateSettings] Configuration block for user attribute update settings. Detailed below.
  /// [userPoolAddOns] Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  /// [userPoolTier] The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  /// [usernameAttributes] Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `aliasAttributes`.
  /// [usernameConfiguration] Configuration block for username configuration. Detailed below.
  /// [verificationMessageTemplate] Configuration block for verification message templates. Detailed below.
  /// [webAuthnConfiguration] Configuration block for web authn configuration. Detailed below.
  const UserPoolState({
    this.accountRecoverySetting,
    this.adminCreateUserConfig,
    this.aliasAttributes,
    this.arn,
    this.autoVerifiedAttributes,
    this.creationDate,
    this.customDomain,
    this.deletionProtection,
    this.deviceConfiguration,
    this.domain,
    this.emailConfiguration,
    this.emailMfaConfiguration,
    this.emailVerificationMessage,
    this.emailVerificationSubject,
    this.endpoint,
    this.estimatedNumberOfUsers,
    this.lambdaConfig,
    this.lastModifiedDate,
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
    this.tagsAll,
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
      'arn': ?arn,
      'autoVerifiedAttributes': ?autoVerifiedAttributes,
      'creationDate': ?creationDate,
      'customDomain': ?customDomain,
      'deletionProtection': ?deletionProtection,
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolDeviceConfiguration, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'domain': ?domain,
      'emailConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolEmailConfiguration, Map<String, dynamic>>(emailConfiguration, (value) => value.toMap()),
      'emailMfaConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolEmailMfaConfiguration, Map<String, dynamic>>(emailMfaConfiguration, (value) => value.toMap()),
      'emailVerificationMessage': ?emailVerificationMessage,
      'emailVerificationSubject': ?emailVerificationSubject,
      'endpoint': ?endpoint,
      'estimatedNumberOfUsers': ?estimatedNumberOfUsers,
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
      'lastModifiedDate': ?lastModifiedDate,
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
      'tagsAll': ?tagsAll,
      'userAttributeUpdateSettings': ?pulumi.Input.mapOptionalInputValue<UserPoolUserAttributeUpdateSettings, Map<String, dynamic>>(userAttributeUpdateSettings, (value) => value.toMap()),
      'userPoolAddOns': ?pulumi.Input.mapOptionalInputValue<UserPoolUserPoolAddOns, Map<String, dynamic>>(userPoolAddOns, (value) => value.toMap()),
      'userPoolTier': ?userPoolTier,
      'usernameAttributes': ?usernameAttributes,
      'usernameConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolUsernameConfiguration, Map<String, dynamic>>(usernameConfiguration, (value) => value.toMap()),
      'verificationMessageTemplate': ?pulumi.Input.mapOptionalInputValue<UserPoolVerificationMessageTemplate, Map<String, dynamic>>(verificationMessageTemplate, (value) => value.toMap()),
      'webAuthnConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolWebAuthnConfiguration, Map<String, dynamic>>(webAuthnConfiguration, (value) => value.toMap()),
    };
  }

  factory UserPoolState.fromMap(Map<String, dynamic> map) {
    return UserPoolState(
      accountRecoverySetting: (() { final guardedValue = map['accountRecoverySetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolAccountRecoverySetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminCreateUserConfig: (() { final guardedValue = map['adminCreateUserConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolAdminCreateUserConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      aliasAttributes: (() { final guardedValue = map['aliasAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoVerifiedAttributes: (() { final guardedValue = map['autoVerifiedAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceConfiguration: (() { final guardedValue = map['deviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolDeviceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailConfiguration: (() { final guardedValue = map['emailConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolEmailConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailMfaConfiguration: (() { final guardedValue = map['emailMfaConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolEmailMfaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailVerificationMessage: (() { final guardedValue = map['emailVerificationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailVerificationSubject: (() { final guardedValue = map['emailVerificationSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      estimatedNumberOfUsers: (() { final guardedValue = map['estimatedNumberOfUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lambdaConfig: (() { final guardedValue = map['lambdaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolLambdaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mfaConfiguration: (() { final guardedValue = map['mfaConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordPolicy: (() { final guardedValue = map['passwordPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPoolSchema>(guardedValue, (value) => UserPoolSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      signInPolicy: (() { final guardedValue = map['signInPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolSignInPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smsAuthenticationMessage: (() { final guardedValue = map['smsAuthenticationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smsConfiguration: (() { final guardedValue = map['smsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolSmsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smsVerificationMessage: (() { final guardedValue = map['smsVerificationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareTokenMfaConfiguration: (() { final guardedValue = map['softwareTokenMfaConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolSoftwareTokenMfaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userAttributeUpdateSettings: (() { final guardedValue = map['userAttributeUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolUserAttributeUpdateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolAddOns: (() { final guardedValue = map['userPoolAddOns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolUserPoolAddOns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolTier: (() { final guardedValue = map['userPoolTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernameAttributes: (() { final guardedValue = map['usernameAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usernameConfiguration: (() { final guardedValue = map['usernameConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolUsernameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verificationMessageTemplate: (() { final guardedValue = map['verificationMessageTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolVerificationMessageTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webAuthnConfiguration: (() { final guardedValue = map['webAuthnConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolWebAuthnConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
