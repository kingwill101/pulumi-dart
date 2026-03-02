// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_lambda_config_custom_email_sender.dart';
import 'user_pool_lambda_config_custom_sms_sender.dart';
import 'user_pool_lambda_config_pre_token_generation_config.dart';

class UserPoolLambdaConfig {
  /// ARN of the lambda creating an authentication challenge.
  final pulumi.Input<String>? createAuthChallenge;
  /// A custom email sender AWS Lambda trigger. See custom_email_sender Below.
  final pulumi.Input<UserPoolLambdaConfigCustomEmailSender>? customEmailSender;
  /// Custom Message AWS Lambda trigger.
  final pulumi.Input<String>? customMessage;
  /// A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.
  final pulumi.Input<UserPoolLambdaConfigCustomSmsSender>? customSmsSender;
  /// Defines the authentication challenge.
  final pulumi.Input<String>? defineAuthChallenge;
  /// The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender.
  final pulumi.Input<String>? kmsKeyId;
  /// Post-authentication AWS Lambda trigger.
  final pulumi.Input<String>? postAuthentication;
  /// Post-confirmation AWS Lambda trigger.
  final pulumi.Input<String>? postConfirmation;
  /// Pre-authentication AWS Lambda trigger.
  final pulumi.Input<String>? preAuthentication;
  /// Pre-registration AWS Lambda trigger.
  final pulumi.Input<String>? preSignUp;
  /// Allow to customize identity token claims before token generation. Set this parameter for legacy purposes; for new instances of pre token generation triggers, set the lambda_arn of `pre_token_generation_config`.
  final pulumi.Input<String>? preTokenGeneration;
  /// Allow to customize access tokens. See pre_token_configuration_type
  final pulumi.Input<UserPoolLambdaConfigPreTokenGenerationConfig>? preTokenGenerationConfig;
  /// User migration Lambda config type.
  final pulumi.Input<String>? userMigration;
  /// Verifies the authentication challenge response.
  final pulumi.Input<String>? verifyAuthChallengeResponse;

  /// Creates a new [UserPoolLambdaConfig].
  /// [createAuthChallenge] ARN of the lambda creating an authentication challenge.
  /// [customEmailSender] A custom email sender AWS Lambda trigger. See custom_email_sender Below.
  /// [customMessage] Custom Message AWS Lambda trigger.
  /// [customSmsSender] A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.
  /// [defineAuthChallenge] Defines the authentication challenge.
  /// [kmsKeyId] The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender.
  /// [postAuthentication] Post-authentication AWS Lambda trigger.
  /// [postConfirmation] Post-confirmation AWS Lambda trigger.
  /// [preAuthentication] Pre-authentication AWS Lambda trigger.
  /// [preSignUp] Pre-registration AWS Lambda trigger.
  /// [preTokenGeneration] Allow to customize identity token claims before token generation. Set this parameter for legacy purposes; for new instances of pre token generation triggers, set the lambda_arn of `pre_token_generation_config`.
  /// [preTokenGenerationConfig] Allow to customize access tokens. See pre_token_configuration_type
  /// [userMigration] User migration Lambda config type.
  /// [verifyAuthChallengeResponse] Verifies the authentication challenge response.
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
      createAuthChallenge: map['createAuthChallenge'] == null ? null : ((map['createAuthChallenge'] as String).input()).input(),
      customEmailSender: map['customEmailSender'] == null ? null : ((UserPoolLambdaConfigCustomEmailSender.fromMap((map['customEmailSender']! as Map).cast<String, dynamic>())).input()).input(),
      customMessage: map['customMessage'] == null ? null : ((map['customMessage'] as String).input()).input(),
      customSmsSender: map['customSmsSender'] == null ? null : ((UserPoolLambdaConfigCustomSmsSender.fromMap((map['customSmsSender']! as Map).cast<String, dynamic>())).input()).input(),
      defineAuthChallenge: map['defineAuthChallenge'] == null ? null : ((map['defineAuthChallenge'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      postAuthentication: map['postAuthentication'] == null ? null : ((map['postAuthentication'] as String).input()).input(),
      postConfirmation: map['postConfirmation'] == null ? null : ((map['postConfirmation'] as String).input()).input(),
      preAuthentication: map['preAuthentication'] == null ? null : ((map['preAuthentication'] as String).input()).input(),
      preSignUp: map['preSignUp'] == null ? null : ((map['preSignUp'] as String).input()).input(),
      preTokenGeneration: map['preTokenGeneration'] == null ? null : ((map['preTokenGeneration'] as String).input()).input(),
      preTokenGenerationConfig: map['preTokenGenerationConfig'] == null ? null : ((UserPoolLambdaConfigPreTokenGenerationConfig.fromMap((map['preTokenGenerationConfig']! as Map).cast<String, dynamic>())).input()).input(),
      userMigration: map['userMigration'] == null ? null : ((map['userMigration'] as String).input()).input(),
      verifyAuthChallengeResponse: map['verifyAuthChallengeResponse'] == null ? null : ((map['verifyAuthChallengeResponse'] as String).input()).input(),
    );
  }
}

