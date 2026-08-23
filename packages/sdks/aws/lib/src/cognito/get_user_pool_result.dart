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
  final List<GetUserPoolAccountRecoverySetting> accountRecoverySettings;
  final List<GetUserPoolAdminCreateUserConfig> adminCreateUserConfigs;
  /// ARN of the User Pool.
  /// * accountRecoverySetting - The available verified method a user can use to recover their password when they call ForgotPassword. You can use this setting to define a preferred method when a user has more than one method available. With this setting, SMS doesn't qualify for a valid password recovery mechanism if the user also has SMS multi-factor authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy behavior to determine the recovery method where SMS is preferred through email.
  /// * adminCreateUserConfig - The configuration for AdminCreateUser requests.
  final String arn;
  /// The attributes that are auto-verified in a user pool.
  final List<String> autoVerifiedAttributes;
  /// The date and time, in ISO 8601 format, when the item was created.
  final String creationDate;
  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. An example of a custom domain name might be auth.example.com.
  final String customDomain;
  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature.
  /// * deviceConfiguration - The device-remembering configuration for a user pool. A null value indicates that you have deactivated device remembering in your user pool.
  final String deletionProtection;
  final List<GetUserPoolDeviceConfiguration> deviceConfigurations;
  /// The domain prefix, if the user pool has a domain associated with it.
  /// * emailConfiguration - The email configuration of your user pool. The email configuration type sets your preferred sending method, AWS Region, and sender for messages from your user pool.
  final String domain;
  final List<GetUserPoolEmailConfiguration> emailConfigurations;
  /// A number estimating the size of the user pool.
  /// * lambdaConfig - The AWS Lambda triggers associated with the user pool.
  final int estimatedNumberOfUsers;
  final String id;
  final List<GetUserPoolLambdaConfig> lambdaConfigs;
  /// The date and time, in ISO 8601 format, when the item was modified.
  final String lastModifiedDate;
  /// Can be one of the following values: `OFF` | `ON` | `OPTIONAL`
  final String mfaConfiguration;
  /// - Name of the attribute.
  final String name;
  final String region;
  final List<GetUserPoolSchemaAttribute> schemaAttributes;
  /// The contents of the SMS authentication message.
  final String smsAuthenticationMessage;
  /// The reason why the SMS configuration can't send the messages to your users.
  final String smsConfigurationFailure;
  /// The contents of the SMS authentication message.
  final String smsVerificationMessage;
  /// Map of tags assigned to the resource.
  /// * userPoolAddOns - The user pool add-ons configuration.
  final Map<String, String> tags;
  final List<GetUserPoolUserPoolAddOn> userPoolAddOns;
  final String userPoolId;
  /// (Deprecated) Map of tags assigned to the resource.
  final Map<String, String> userPoolTags;
  /// Specifies whether a user can use an email address or phone number as a username when they sign up.
  final List<String> usernameAttributes;

  /// Creates a new [GetUserPoolResult].
  /// [accountRecoverySettings] Required.
  /// [adminCreateUserConfigs] Required.
  /// [arn] ARN of the User Pool.
  /// [autoVerifiedAttributes] The attributes that are auto-verified in a user pool.
  /// [creationDate] The date and time, in ISO 8601 format, when the item was created.
  /// [customDomain] A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. An example of a custom domain name might be auth.example.com.
  /// [deletionProtection] When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature.
  /// [deviceConfigurations] Required.
  /// [domain] The domain prefix, if the user pool has a domain associated with it.
  /// [emailConfigurations] Required.
  /// [estimatedNumberOfUsers] A number estimating the size of the user pool.
  /// [id] Required.
  /// [lambdaConfigs] Required.
  /// [lastModifiedDate] The date and time, in ISO 8601 format, when the item was modified.
  /// [mfaConfiguration] Can be one of the following values: `OFF` | `ON` | `OPTIONAL`
  /// [name] - Name of the attribute.
  /// [region] Required.
  /// [schemaAttributes] Required.
  /// [smsAuthenticationMessage] The contents of the SMS authentication message.
  /// [smsConfigurationFailure] The reason why the SMS configuration can't send the messages to your users.
  /// [smsVerificationMessage] The contents of the SMS authentication message.
  /// [tags] Map of tags assigned to the resource.
  /// [userPoolAddOns] Required.
  /// [userPoolId] Required.
  /// [userPoolTags] (Deprecated) Map of tags assigned to the resource.
  /// [usernameAttributes] Specifies whether a user can use an email address or phone number as a username when they sign up.
  const GetUserPoolResult({
    required this.accountRecoverySettings,
    required this.adminCreateUserConfigs,
    required this.arn,
    required this.autoVerifiedAttributes,
    required this.creationDate,
    required this.customDomain,
    required this.deletionProtection,
    required this.deviceConfigurations,
    required this.domain,
    required this.emailConfigurations,
    required this.estimatedNumberOfUsers,
    required this.id,
    required this.lambdaConfigs,
    required this.lastModifiedDate,
    required this.mfaConfiguration,
    required this.name,
    required this.region,
    required this.schemaAttributes,
    required this.smsAuthenticationMessage,
    required this.smsConfigurationFailure,
    required this.smsVerificationMessage,
    required this.tags,
    required this.userPoolAddOns,
    required this.userPoolId,
    required this.userPoolTags,
    required this.usernameAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountRecoverySettings': pulumi.Input.encodeList<GetUserPoolAccountRecoverySetting, Map<String, dynamic>>(accountRecoverySettings, (value) => value.toMap()),
      'adminCreateUserConfigs': pulumi.Input.encodeList<GetUserPoolAdminCreateUserConfig, Map<String, dynamic>>(adminCreateUserConfigs, (value) => value.toMap()),
      'arn': arn,
      'autoVerifiedAttributes': autoVerifiedAttributes,
      'creationDate': creationDate,
      'customDomain': customDomain,
      'deletionProtection': deletionProtection,
      'deviceConfigurations': pulumi.Input.encodeList<GetUserPoolDeviceConfiguration, Map<String, dynamic>>(deviceConfigurations, (value) => value.toMap()),
      'domain': domain,
      'emailConfigurations': pulumi.Input.encodeList<GetUserPoolEmailConfiguration, Map<String, dynamic>>(emailConfigurations, (value) => value.toMap()),
      'estimatedNumberOfUsers': estimatedNumberOfUsers,
      'id': id,
      'lambdaConfigs': pulumi.Input.encodeList<GetUserPoolLambdaConfig, Map<String, dynamic>>(lambdaConfigs, (value) => value.toMap()),
      'lastModifiedDate': lastModifiedDate,
      'mfaConfiguration': mfaConfiguration,
      'name': name,
      'region': region,
      'schemaAttributes': pulumi.Input.encodeList<GetUserPoolSchemaAttribute, Map<String, dynamic>>(schemaAttributes, (value) => value.toMap()),
      'smsAuthenticationMessage': smsAuthenticationMessage,
      'smsConfigurationFailure': smsConfigurationFailure,
      'smsVerificationMessage': smsVerificationMessage,
      'tags': tags,
      'userPoolAddOns': pulumi.Input.encodeList<GetUserPoolUserPoolAddOn, Map<String, dynamic>>(userPoolAddOns, (value) => value.toMap()),
      'userPoolId': userPoolId,
      'userPoolTags': userPoolTags,
      'usernameAttributes': usernameAttributes,
    };
  }

  factory GetUserPoolResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolResult(
      accountRecoverySettings: pulumi.Input.decodeList<GetUserPoolAccountRecoverySetting>(map['accountRecoverySettings']!, (value) => GetUserPoolAccountRecoverySetting.fromMap((value as Map).cast<String, dynamic>())),
      adminCreateUserConfigs: pulumi.Input.decodeList<GetUserPoolAdminCreateUserConfig>(map['adminCreateUserConfigs']!, (value) => GetUserPoolAdminCreateUserConfig.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      autoVerifiedAttributes: (map['autoVerifiedAttributes'] as List).cast<String>(),
      creationDate: map['creationDate'] as String,
      customDomain: map['customDomain'] as String,
      deletionProtection: map['deletionProtection'] as String,
      deviceConfigurations: pulumi.Input.decodeList<GetUserPoolDeviceConfiguration>(map['deviceConfigurations']!, (value) => GetUserPoolDeviceConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      domain: map['domain'] as String,
      emailConfigurations: pulumi.Input.decodeList<GetUserPoolEmailConfiguration>(map['emailConfigurations']!, (value) => GetUserPoolEmailConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      estimatedNumberOfUsers: map['estimatedNumberOfUsers'] as int,
      id: map['id'] as String,
      lambdaConfigs: pulumi.Input.decodeList<GetUserPoolLambdaConfig>(map['lambdaConfigs']!, (value) => GetUserPoolLambdaConfig.fromMap((value as Map).cast<String, dynamic>())),
      lastModifiedDate: map['lastModifiedDate'] as String,
      mfaConfiguration: map['mfaConfiguration'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      schemaAttributes: pulumi.Input.decodeList<GetUserPoolSchemaAttribute>(map['schemaAttributes']!, (value) => GetUserPoolSchemaAttribute.fromMap((value as Map).cast<String, dynamic>())),
      smsAuthenticationMessage: map['smsAuthenticationMessage'] as String,
      smsConfigurationFailure: map['smsConfigurationFailure'] as String,
      smsVerificationMessage: map['smsVerificationMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userPoolAddOns: pulumi.Input.decodeList<GetUserPoolUserPoolAddOn>(map['userPoolAddOns']!, (value) => GetUserPoolUserPoolAddOn.fromMap((value as Map).cast<String, dynamic>())),
      userPoolId: map['userPoolId'] as String,
      userPoolTags: (map['userPoolTags'] as Map).cast<String, String>(),
      usernameAttributes: (map['usernameAttributes'] as List).cast<String>(),
    );
  }
}
