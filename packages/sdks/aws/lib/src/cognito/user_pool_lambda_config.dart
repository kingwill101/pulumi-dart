// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_lambda_config_custom_email_sender.dart';
import 'user_pool_lambda_config_custom_sms_sender.dart';
import 'user_pool_lambda_config_pre_token_generation_config.dart';

class UserPoolLambdaConfig {
  /// ARN of the lambda creating an authentication challenge.
  final pulumi.Input<String?>? createAuthChallenge;
  /// A custom email sender AWS Lambda trigger. See customEmailSender Below.
  final pulumi.Input<UserPoolLambdaConfigCustomEmailSender?>? customEmailSender;
  /// Custom Message AWS Lambda trigger.
  final pulumi.Input<String?>? customMessage;
  /// A custom SMS sender AWS Lambda trigger. See customSmsSender Below.
  final pulumi.Input<UserPoolLambdaConfigCustomSmsSender?>? customSmsSender;
  /// Defines the authentication challenge.
  final pulumi.Input<String?>? defineAuthChallenge;
  /// ARN of KMS Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender.
  final pulumi.Input<String?>? kmsKeyId;
  /// Post-authentication AWS Lambda trigger.
  final pulumi.Input<String?>? postAuthentication;
  /// Post-confirmation AWS Lambda trigger.
  final pulumi.Input<String?>? postConfirmation;
  /// Pre-authentication AWS Lambda trigger.
  final pulumi.Input<String?>? preAuthentication;
  /// Pre-registration AWS Lambda trigger.
  final pulumi.Input<String?>? preSignUp;
  /// Allow to customize identity token claims before token generation. Set this parameter for legacy purposes; for new instances of pre token generation triggers, set the lambdaArn of `preTokenGenerationConfig`.
  final pulumi.Input<String?>? preTokenGeneration;
  /// Allow to customize access tokens. See pre_token_configuration_type
  final pulumi.Input<UserPoolLambdaConfigPreTokenGenerationConfig?>? preTokenGenerationConfig;
  /// User migration Lambda config type.
  final pulumi.Input<String?>? userMigration;
  /// Verifies the authentication challenge response.
  final pulumi.Input<String?>? verifyAuthChallengeResponse;

  /// Creates a new [UserPoolLambdaConfig].
  /// [createAuthChallenge] ARN of the lambda creating an authentication challenge.
  /// [customEmailSender] A custom email sender AWS Lambda trigger. See customEmailSender Below.
  /// [customMessage] Custom Message AWS Lambda trigger.
  /// [customSmsSender] A custom SMS sender AWS Lambda trigger. See customSmsSender Below.
  /// [defineAuthChallenge] Defines the authentication challenge.
  /// [kmsKeyId] ARN of KMS Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender.
  /// [postAuthentication] Post-authentication AWS Lambda trigger.
  /// [postConfirmation] Post-confirmation AWS Lambda trigger.
  /// [preAuthentication] Pre-authentication AWS Lambda trigger.
  /// [preSignUp] Pre-registration AWS Lambda trigger.
  /// [preTokenGeneration] Allow to customize identity token claims before token generation. Set this parameter for legacy purposes; for new instances of pre token generation triggers, set the lambdaArn of `preTokenGenerationConfig`.
  /// [preTokenGenerationConfig] Allow to customize access tokens. See pre_token_configuration_type
  /// [userMigration] User migration Lambda config type.
  /// [verifyAuthChallengeResponse] Verifies the authentication challenge response.
  const UserPoolLambdaConfig({
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
    return <String, dynamic>{
      'createAuthChallenge': ?createAuthChallenge,
      'customEmailSender': ?pulumi.Input.mapOptionalInputValue<UserPoolLambdaConfigCustomEmailSender, Map<String, dynamic>>(customEmailSender, (value) => value.toMap()),
      'customMessage': ?customMessage,
      'customSmsSender': ?pulumi.Input.mapOptionalInputValue<UserPoolLambdaConfigCustomSmsSender, Map<String, dynamic>>(customSmsSender, (value) => value.toMap()),
      'defineAuthChallenge': ?defineAuthChallenge,
      'kmsKeyId': ?kmsKeyId,
      'postAuthentication': ?postAuthentication,
      'postConfirmation': ?postConfirmation,
      'preAuthentication': ?preAuthentication,
      'preSignUp': ?preSignUp,
      'preTokenGeneration': ?preTokenGeneration,
      'preTokenGenerationConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolLambdaConfigPreTokenGenerationConfig, Map<String, dynamic>>(preTokenGenerationConfig, (value) => value.toMap()),
      'userMigration': ?userMigration,
      'verifyAuthChallengeResponse': ?verifyAuthChallengeResponse,
    };
  }

  factory UserPoolLambdaConfig.fromMap(Map<String, dynamic> map) {
    return UserPoolLambdaConfig(
      createAuthChallenge: (() { final guardedValue = map['createAuthChallenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEmailSender: (() { final guardedValue = map['customEmailSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolLambdaConfigCustomEmailSender.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customMessage: (() { final guardedValue = map['customMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSmsSender: (() { final guardedValue = map['customSmsSender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolLambdaConfigCustomSmsSender.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defineAuthChallenge: (() { final guardedValue = map['defineAuthChallenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postAuthentication: (() { final guardedValue = map['postAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postConfirmation: (() { final guardedValue = map['postConfirmation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preAuthentication: (() { final guardedValue = map['preAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preSignUp: (() { final guardedValue = map['preSignUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preTokenGeneration: (() { final guardedValue = map['preTokenGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preTokenGenerationConfig: (() { final guardedValue = map['preTokenGenerationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolLambdaConfigPreTokenGenerationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userMigration: (() { final guardedValue = map['userMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifyAuthChallengeResponse: (() { final guardedValue = map['verifyAuthChallengeResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
