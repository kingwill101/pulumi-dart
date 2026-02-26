// ignore_for_file: unused_element, unnecessary_cast

import '../user_pool_lambda_config_custom_email_sender/user_pool_lambda_config_custom_email_sender.dart';
import '../user_pool_lambda_config_custom_sms_sender/user_pool_lambda_config_custom_sms_sender.dart';
import '../user_pool_lambda_config_pre_token_generation_config/user_pool_lambda_config_pre_token_generation_config.dart';

class UserPoolLambdaConfig {
  /// ARN of the lambda creating an authentication challenge.
  final String? createAuthChallenge;

  /// A custom email sender AWS Lambda trigger. See<span pulumi-lang-nodejs=" customEmailSender " pulumi-lang-dotnet=" CustomEmailSender " pulumi-lang-go=" customEmailSender " pulumi-lang-python=" custom_email_sender " pulumi-lang-yaml=" customEmailSender " pulumi-lang-java=" customEmailSender "> custom_email_sender </span>Below.
  final UserPoolLambdaConfigCustomEmailSender? customEmailSender;

  /// Custom Message AWS Lambda trigger.
  final String? customMessage;

  /// A custom SMS sender AWS Lambda trigger. See<span pulumi-lang-nodejs=" customSmsSender " pulumi-lang-dotnet=" CustomSmsSender " pulumi-lang-go=" customSmsSender " pulumi-lang-python=" custom_sms_sender " pulumi-lang-yaml=" customSmsSender " pulumi-lang-java=" customSmsSender "> custom_sms_sender </span>Below.
  final UserPoolLambdaConfigCustomSmsSender? customSmsSender;

  /// Defines the authentication challenge.
  final String? defineAuthChallenge;

  /// The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender.
  final String? kmsKeyId;

  /// Post-authentication AWS Lambda trigger.
  final String? postAuthentication;

  /// Post-confirmation AWS Lambda trigger.
  final String? postConfirmation;

  /// Pre-authentication AWS Lambda trigger.
  final String? preAuthentication;

  /// Pre-registration AWS Lambda trigger.
  final String? preSignUp;

  /// Allow to customize identity token claims before token generation. Set this parameter for legacy purposes; for new instances of pre token generation triggers, set the<span pulumi-lang-nodejs=" lambdaArn " pulumi-lang-dotnet=" LambdaArn " pulumi-lang-go=" lambdaArn " pulumi-lang-python=" lambda_arn " pulumi-lang-yaml=" lambdaArn " pulumi-lang-java=" lambdaArn "> lambda_arn </span>of <span pulumi-lang-nodejs="`preTokenGenerationConfig`" pulumi-lang-dotnet="`PreTokenGenerationConfig`" pulumi-lang-go="`preTokenGenerationConfig`" pulumi-lang-python="`pre_token_generation_config`" pulumi-lang-yaml="`preTokenGenerationConfig`" pulumi-lang-java="`preTokenGenerationConfig`">`pre_token_generation_config`</span>.
  final String? preTokenGeneration;

  /// Allow to customize access tokens. See pre_token_configuration_type
  final UserPoolLambdaConfigPreTokenGenerationConfig? preTokenGenerationConfig;

  /// User migration Lambda config type.
  final String? userMigration;

  /// Verifies the authentication challenge response.
  final String? verifyAuthChallengeResponse;

  UserPoolLambdaConfig({
    this.createAuthChallenge,
    this.customEmailSender,
    this.customMessage,
    this.customSmsSender,
    this.defineAuthChallenge,
    this.kmsKeyId,
    this.postAuthentication,
    this.postConfirmation,
    this.preAuthentication,
    this.preSignUp,
    this.preTokenGeneration,
    this.preTokenGenerationConfig,
    this.userMigration,
    this.verifyAuthChallengeResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createAuthChallengeValue = createAuthChallenge;
    if (createAuthChallengeValue != null) {
      map['createAuthChallenge'] = createAuthChallengeValue;
    }
    final customEmailSenderValue = customEmailSender;
    if (customEmailSenderValue != null) {
      map['customEmailSender'] = customEmailSenderValue.toMap();
    }
    final customMessageValue = customMessage;
    if (customMessageValue != null) {
      map['customMessage'] = customMessageValue;
    }
    final customSmsSenderValue = customSmsSender;
    if (customSmsSenderValue != null) {
      map['customSmsSender'] = customSmsSenderValue.toMap();
    }
    final defineAuthChallengeValue = defineAuthChallenge;
    if (defineAuthChallengeValue != null) {
      map['defineAuthChallenge'] = defineAuthChallengeValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final postAuthenticationValue = postAuthentication;
    if (postAuthenticationValue != null) {
      map['postAuthentication'] = postAuthenticationValue;
    }
    final postConfirmationValue = postConfirmation;
    if (postConfirmationValue != null) {
      map['postConfirmation'] = postConfirmationValue;
    }
    final preAuthenticationValue = preAuthentication;
    if (preAuthenticationValue != null) {
      map['preAuthentication'] = preAuthenticationValue;
    }
    final preSignUpValue = preSignUp;
    if (preSignUpValue != null) {
      map['preSignUp'] = preSignUpValue;
    }
    final preTokenGenerationValue = preTokenGeneration;
    if (preTokenGenerationValue != null) {
      map['preTokenGeneration'] = preTokenGenerationValue;
    }
    final preTokenGenerationConfigValue = preTokenGenerationConfig;
    if (preTokenGenerationConfigValue != null) {
      map['preTokenGenerationConfig'] = preTokenGenerationConfigValue.toMap();
    }
    final userMigrationValue = userMigration;
    if (userMigrationValue != null) {
      map['userMigration'] = userMigrationValue;
    }
    final verifyAuthChallengeResponseValue = verifyAuthChallengeResponse;
    if (verifyAuthChallengeResponseValue != null) {
      map['verifyAuthChallengeResponse'] = verifyAuthChallengeResponseValue;
    }
    return map;
  }

  factory UserPoolLambdaConfig.fromMap(Map<String, dynamic> map) {
    return UserPoolLambdaConfig(
      createAuthChallenge: map['createAuthChallenge'] == null
          ? null
          : map['createAuthChallenge'] as String,
      customEmailSender: map['customEmailSender'] == null
          ? null
          : UserPoolLambdaConfigCustomEmailSender.fromMap(
              (map['customEmailSender'] as Map).cast<String, dynamic>()),
      customMessage:
          map['customMessage'] == null ? null : map['customMessage'] as String,
      customSmsSender: map['customSmsSender'] == null
          ? null
          : UserPoolLambdaConfigCustomSmsSender.fromMap(
              (map['customSmsSender'] as Map).cast<String, dynamic>()),
      defineAuthChallenge: map['defineAuthChallenge'] == null
          ? null
          : map['defineAuthChallenge'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      postAuthentication: map['postAuthentication'] == null
          ? null
          : map['postAuthentication'] as String,
      postConfirmation: map['postConfirmation'] == null
          ? null
          : map['postConfirmation'] as String,
      preAuthentication: map['preAuthentication'] == null
          ? null
          : map['preAuthentication'] as String,
      preSignUp: map['preSignUp'] == null ? null : map['preSignUp'] as String,
      preTokenGeneration: map['preTokenGeneration'] == null
          ? null
          : map['preTokenGeneration'] as String,
      preTokenGenerationConfig: map['preTokenGenerationConfig'] == null
          ? null
          : UserPoolLambdaConfigPreTokenGenerationConfig.fromMap(
              (map['preTokenGenerationConfig'] as Map).cast<String, dynamic>()),
      userMigration:
          map['userMigration'] == null ? null : map['userMigration'] as String,
      verifyAuthChallengeResponse: map['verifyAuthChallengeResponse'] == null
          ? null
          : map['verifyAuthChallengeResponse'] as String,
    );
  }
}
