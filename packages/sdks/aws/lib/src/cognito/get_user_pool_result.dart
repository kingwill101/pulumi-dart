// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_account_recovery_setting.dart';
import 'get_user_pool_admin_create_user_config.dart';
import 'get_user_pool_device_configuration.dart';
import 'get_user_pool_email_configuration.dart';
import 'get_user_pool_lambda_config.dart';
import 'get_user_pool_schema_attribute.dart';
import 'get_user_pool_user_pool_add_on.dart';

/// Result data returned by getUserPool.
class GetUserPoolResult {
  final List<GetUserPoolAccountRecoverySetting>? accountRecoverySettings;
  final List<GetUserPoolAdminCreateUserConfig>? adminCreateUserConfigs;
  /// ARN of the User Pool.
  /// * accountRecoverySetting - The available verified method a user can use to recover their password when they call ForgotPassword. You can use this setting to define a preferred method when a user has more than one method available. With this setting, SMS doesn't qualify for a valid password recovery mechanism if the user also has SMS multi-factor authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy behavior to determine the recovery method where SMS is preferred through email.
  /// * adminCreateUserConfig - The configuration for AdminCreateUser requests.
  final String? arn;
  /// The attributes that are auto-verified in a user pool.
  final List<String>? autoVerifiedAttributes;
  /// The date and time, in ISO 8601 format, when the item was created.
  final String? creationDate;
  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. An example of a custom domain name might be auth.example.com.
  final String? customDomain;
  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature.
  /// * deviceConfiguration - The device-remembering configuration for a user pool. A null value indicates that you have deactivated device remembering in your user pool.
  final String? deletionProtection;
  final List<GetUserPoolDeviceConfiguration>? deviceConfigurations;
  /// The domain prefix, if the user pool has a domain associated with it.
  /// * emailConfiguration - The email configuration of your user pool. The email configuration type sets your preferred sending method, AWS Region, and sender for messages from your user pool.
  final String? domain;
  final List<GetUserPoolEmailConfiguration>? emailConfigurations;
  /// A number estimating the size of the user pool.
  /// * lambdaConfig - The AWS Lambda triggers associated with the user pool.
  final int? estimatedNumberOfUsers;
  final String? id;
  final List<GetUserPoolLambdaConfig>? lambdaConfigs;
  /// The date and time, in ISO 8601 format, when the item was modified.
  final String? lastModifiedDate;
  /// Can be one of the following values: `OFF` | `ON` | `OPTIONAL`
  final String? mfaConfiguration;
  /// - Name of the attribute.
  final String? name;
  final String? region;
  final List<GetUserPoolSchemaAttribute>? schemaAttributes;
  /// The contents of the SMS authentication message.
  final String? smsAuthenticationMessage;
  /// The reason why the SMS configuration can't send the messages to your users.
  final String? smsConfigurationFailure;
  /// The contents of the SMS authentication message.
  final String? smsVerificationMessage;
  /// Map of tags assigned to the resource.
  /// * userPoolAddOns - The user pool add-ons configuration.
  final Map<String, String>? tags;
  final List<GetUserPoolUserPoolAddOn>? userPoolAddOns;
  final String? userPoolId;
  /// (Deprecated) Map of tags assigned to the resource.
  final Map<String, String>? userPoolTags;
  /// Specifies whether a user can use an email address or phone number as a username when they sign up.
  final List<String>? usernameAttributes;

  /// Creates a new [GetUserPoolResult].
  /// [accountRecoverySettings] Optional.
  /// [adminCreateUserConfigs] Optional.
  /// [arn] ARN of the User Pool.
  /// [autoVerifiedAttributes] The attributes that are auto-verified in a user pool.
  /// [creationDate] The date and time, in ISO 8601 format, when the item was created.
  /// [customDomain] A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. An example of a custom domain name might be auth.example.com.
  /// [deletionProtection] When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature.
  /// [deviceConfigurations] Optional.
  /// [domain] The domain prefix, if the user pool has a domain associated with it.
  /// [emailConfigurations] Optional.
  /// [estimatedNumberOfUsers] A number estimating the size of the user pool.
  /// [id] Optional.
  /// [lambdaConfigs] Optional.
  /// [lastModifiedDate] The date and time, in ISO 8601 format, when the item was modified.
  /// [mfaConfiguration] Can be one of the following values: `OFF` | `ON` | `OPTIONAL`
  /// [name] - Name of the attribute.
  /// [region] Optional.
  /// [schemaAttributes] Optional.
  /// [smsAuthenticationMessage] The contents of the SMS authentication message.
  /// [smsConfigurationFailure] The reason why the SMS configuration can't send the messages to your users.
  /// [smsVerificationMessage] The contents of the SMS authentication message.
  /// [tags] Map of tags assigned to the resource.
  /// [userPoolAddOns] Optional.
  /// [userPoolId] Optional.
  /// [userPoolTags] (Deprecated) Map of tags assigned to the resource.
  /// [usernameAttributes] Specifies whether a user can use an email address or phone number as a username when they sign up.
  const GetUserPoolResult({
    this.accountRecoverySettings,
    this.adminCreateUserConfigs,
    this.arn,
    this.autoVerifiedAttributes,
    this.creationDate,
    this.customDomain,
    this.deletionProtection,
    this.deviceConfigurations,
    this.domain,
    this.emailConfigurations,
    this.estimatedNumberOfUsers,
    this.id,
    this.lambdaConfigs,
    this.lastModifiedDate,
    this.mfaConfiguration,
    this.name,
    this.region,
    this.schemaAttributes,
    this.smsAuthenticationMessage,
    this.smsConfigurationFailure,
    this.smsVerificationMessage,
    this.tags,
    this.userPoolAddOns,
    this.userPoolId,
    this.userPoolTags,
    this.usernameAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountRecoverySettings': ?(() { final guardedValue = accountRecoverySettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolAccountRecoverySetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'adminCreateUserConfigs': ?(() { final guardedValue = adminCreateUserConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolAdminCreateUserConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'autoVerifiedAttributes': ?autoVerifiedAttributes,
      'creationDate': ?creationDate,
      'customDomain': ?customDomain,
      'deletionProtection': ?deletionProtection,
      'deviceConfigurations': ?(() { final guardedValue = deviceConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolDeviceConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'domain': ?domain,
      'emailConfigurations': ?(() { final guardedValue = emailConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolEmailConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'estimatedNumberOfUsers': ?estimatedNumberOfUsers,
      'id': ?id,
      'lambdaConfigs': ?(() { final guardedValue = lambdaConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolLambdaConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastModifiedDate': ?lastModifiedDate,
      'mfaConfiguration': ?mfaConfiguration,
      'name': ?name,
      'region': ?region,
      'schemaAttributes': ?(() { final guardedValue = schemaAttributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolSchemaAttribute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'smsAuthenticationMessage': ?smsAuthenticationMessage,
      'smsConfigurationFailure': ?smsConfigurationFailure,
      'smsVerificationMessage': ?smsVerificationMessage,
      'tags': ?tags,
      'userPoolAddOns': ?(() { final guardedValue = userPoolAddOns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolUserPoolAddOn, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userPoolId': ?userPoolId,
      'userPoolTags': ?userPoolTags,
      'usernameAttributes': ?usernameAttributes,
    };
  }

  factory GetUserPoolResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolResult(
      accountRecoverySettings: (() { final guardedValue = map['accountRecoverySettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolAccountRecoverySetting>(guardedValue, (value) => GetUserPoolAccountRecoverySetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      adminCreateUserConfigs: (() { final guardedValue = map['adminCreateUserConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolAdminCreateUserConfig>(guardedValue, (value) => GetUserPoolAdminCreateUserConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoVerifiedAttributes: (() { final guardedValue = map['autoVerifiedAttributes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceConfigurations: (() { final guardedValue = map['deviceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolDeviceConfiguration>(guardedValue, (value) => GetUserPoolDeviceConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailConfigurations: (() { final guardedValue = map['emailConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolEmailConfiguration>(guardedValue, (value) => GetUserPoolEmailConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      estimatedNumberOfUsers: (() { final guardedValue = map['estimatedNumberOfUsers']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lambdaConfigs: (() { final guardedValue = map['lambdaConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolLambdaConfig>(guardedValue, (value) => GetUserPoolLambdaConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mfaConfiguration: (() { final guardedValue = map['mfaConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaAttributes: (() { final guardedValue = map['schemaAttributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolSchemaAttribute>(guardedValue, (value) => GetUserPoolSchemaAttribute.fromMap((value as Map).cast<String, dynamic>())); })(),
      smsAuthenticationMessage: (() { final guardedValue = map['smsAuthenticationMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smsConfigurationFailure: (() { final guardedValue = map['smsConfigurationFailure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smsVerificationMessage: (() { final guardedValue = map['smsVerificationMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userPoolAddOns: (() { final guardedValue = map['userPoolAddOns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolUserPoolAddOn>(guardedValue, (value) => GetUserPoolUserPoolAddOn.fromMap((value as Map).cast<String, dynamic>())); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPoolTags: (() { final guardedValue = map['userPoolTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      usernameAttributes: (() { final guardedValue = map['usernameAttributes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
