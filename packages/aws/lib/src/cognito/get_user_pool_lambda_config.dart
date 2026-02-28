// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_lambda_config_custom_email_sender.dart';
import 'get_user_pool_lambda_config_custom_sms_sender.dart';
import 'get_user_pool_lambda_config_pre_token_generation_config.dart';

class GetUserPoolLambdaConfig {
  final String createAuthChallenge;
  final List<GetUserPoolLambdaConfigCustomEmailSender> customEmailSenders;
  final String customMessage;
  final List<GetUserPoolLambdaConfigCustomSmsSender> customSmsSenders;
  final String defineAuthChallenge;
  final String kmsKeyId;
  final String postAuthentication;
  final String postConfirmation;
  final String preAuthentication;
  final String preSignUp;
  final String preTokenGeneration;
  final List<GetUserPoolLambdaConfigPreTokenGenerationConfig> preTokenGenerationConfigs;
  final String userMigration;
  final String verifyAuthChallengeResponse;

  /// Creates a new [GetUserPoolLambdaConfig].
  /// [createAuthChallenge] Required.
  /// [customEmailSenders] Required.
  /// [customMessage] Required.
  /// [customSmsSenders] Required.
  /// [defineAuthChallenge] Required.
  /// [kmsKeyId] Required.
  /// [postAuthentication] Required.
  /// [postConfirmation] Required.
  /// [preAuthentication] Required.
  /// [preSignUp] Required.
  /// [preTokenGeneration] Required.
  /// [preTokenGenerationConfigs] Required.
  /// [userMigration] Required.
  /// [verifyAuthChallengeResponse] Required.
  GetUserPoolLambdaConfig({
    required this.createAuthChallenge,
    required this.customEmailSenders,
    required this.customMessage,
    required this.customSmsSenders,
    required this.defineAuthChallenge,
    required this.kmsKeyId,
    required this.postAuthentication,
    required this.postConfirmation,
    required this.preAuthentication,
    required this.preSignUp,
    required this.preTokenGeneration,
    required this.preTokenGenerationConfigs,
    required this.userMigration,
    required this.verifyAuthChallengeResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createAuthChallenge': createAuthChallenge,
      'customEmailSenders': pulumi.Input.encodeList<GetUserPoolLambdaConfigCustomEmailSender, Map<String, dynamic>>(customEmailSenders, (value) => value.toMap()),
      'customMessage': customMessage,
      'customSmsSenders': pulumi.Input.encodeList<GetUserPoolLambdaConfigCustomSmsSender, Map<String, dynamic>>(customSmsSenders, (value) => value.toMap()),
      'defineAuthChallenge': defineAuthChallenge,
      'kmsKeyId': kmsKeyId,
      'postAuthentication': postAuthentication,
      'postConfirmation': postConfirmation,
      'preAuthentication': preAuthentication,
      'preSignUp': preSignUp,
      'preTokenGeneration': preTokenGeneration,
      'preTokenGenerationConfigs': pulumi.Input.encodeList<GetUserPoolLambdaConfigPreTokenGenerationConfig, Map<String, dynamic>>(preTokenGenerationConfigs, (value) => value.toMap()),
      'userMigration': userMigration,
      'verifyAuthChallengeResponse': verifyAuthChallengeResponse,
    };
  }

  factory GetUserPoolLambdaConfig.fromMap(Map<String, dynamic> map) {
    return GetUserPoolLambdaConfig(
      createAuthChallenge: map['createAuthChallenge'] as String,
      customEmailSenders: pulumi.Input.decodeList<GetUserPoolLambdaConfigCustomEmailSender>(map['customEmailSenders'], (value) => GetUserPoolLambdaConfigCustomEmailSender.fromMap((value as Map).cast<String, dynamic>())),
      customMessage: map['customMessage'] as String,
      customSmsSenders: pulumi.Input.decodeList<GetUserPoolLambdaConfigCustomSmsSender>(map['customSmsSenders'], (value) => GetUserPoolLambdaConfigCustomSmsSender.fromMap((value as Map).cast<String, dynamic>())),
      defineAuthChallenge: map['defineAuthChallenge'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      postAuthentication: map['postAuthentication'] as String,
      postConfirmation: map['postConfirmation'] as String,
      preAuthentication: map['preAuthentication'] as String,
      preSignUp: map['preSignUp'] as String,
      preTokenGeneration: map['preTokenGeneration'] as String,
      preTokenGenerationConfigs: pulumi.Input.decodeList<GetUserPoolLambdaConfigPreTokenGenerationConfig>(map['preTokenGenerationConfigs'], (value) => GetUserPoolLambdaConfigPreTokenGenerationConfig.fromMap((value as Map).cast<String, dynamic>())),
      userMigration: map['userMigration'] as String,
      verifyAuthChallengeResponse: map['verifyAuthChallengeResponse'] as String,
    );
  }
}

