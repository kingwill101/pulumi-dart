// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_lambda_config_custom_email_sender.dart';
import 'get_user_pool_lambda_config_custom_sms_sender.dart';
import 'get_user_pool_lambda_config_pre_token_generation_config.dart';

class GetUserPoolLambdaConfig {
  final pulumi.Input<String> createAuthChallenge;
  final pulumi.Input<List<GetUserPoolLambdaConfigCustomEmailSender>> customEmailSenders;
  final pulumi.Input<String> customMessage;
  final pulumi.Input<List<GetUserPoolLambdaConfigCustomSmsSender>> customSmsSenders;
  final pulumi.Input<String> defineAuthChallenge;
  final pulumi.Input<String> kmsKeyId;
  final pulumi.Input<String> postAuthentication;
  final pulumi.Input<String> postConfirmation;
  final pulumi.Input<String> preAuthentication;
  final pulumi.Input<String> preSignUp;
  final pulumi.Input<String> preTokenGeneration;
  final pulumi.Input<List<GetUserPoolLambdaConfigPreTokenGenerationConfig>> preTokenGenerationConfigs;
  final pulumi.Input<String> userMigration;
  final pulumi.Input<String> verifyAuthChallengeResponse;

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
      'customEmailSenders': pulumi.Input.mapInputValue<List<GetUserPoolLambdaConfigCustomEmailSender>, List<Map<String, dynamic>>>(customEmailSenders, (value) => pulumi.Input.encodeList<GetUserPoolLambdaConfigCustomEmailSender, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customMessage': customMessage,
      'customSmsSenders': pulumi.Input.mapInputValue<List<GetUserPoolLambdaConfigCustomSmsSender>, List<Map<String, dynamic>>>(customSmsSenders, (value) => pulumi.Input.encodeList<GetUserPoolLambdaConfigCustomSmsSender, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defineAuthChallenge': defineAuthChallenge,
      'kmsKeyId': kmsKeyId,
      'postAuthentication': postAuthentication,
      'postConfirmation': postConfirmation,
      'preAuthentication': preAuthentication,
      'preSignUp': preSignUp,
      'preTokenGeneration': preTokenGeneration,
      'preTokenGenerationConfigs': pulumi.Input.mapInputValue<List<GetUserPoolLambdaConfigPreTokenGenerationConfig>, List<Map<String, dynamic>>>(preTokenGenerationConfigs, (value) => pulumi.Input.encodeList<GetUserPoolLambdaConfigPreTokenGenerationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userMigration': userMigration,
      'verifyAuthChallengeResponse': verifyAuthChallengeResponse,
    };
  }

  factory GetUserPoolLambdaConfig.fromMap(Map<String, dynamic> map) {
    return GetUserPoolLambdaConfig(
      createAuthChallenge: pulumi.Input.fromValue(map['createAuthChallenge'] as String),
      customEmailSenders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolLambdaConfigCustomEmailSender>(map['customEmailSenders']!, (value) => GetUserPoolLambdaConfigCustomEmailSender.fromMap((value as Map).cast<String, dynamic>()))),
      customMessage: pulumi.Input.fromValue(map['customMessage'] as String),
      customSmsSenders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolLambdaConfigCustomSmsSender>(map['customSmsSenders']!, (value) => GetUserPoolLambdaConfigCustomSmsSender.fromMap((value as Map).cast<String, dynamic>()))),
      defineAuthChallenge: pulumi.Input.fromValue(map['defineAuthChallenge'] as String),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      postAuthentication: pulumi.Input.fromValue(map['postAuthentication'] as String),
      postConfirmation: pulumi.Input.fromValue(map['postConfirmation'] as String),
      preAuthentication: pulumi.Input.fromValue(map['preAuthentication'] as String),
      preSignUp: pulumi.Input.fromValue(map['preSignUp'] as String),
      preTokenGeneration: pulumi.Input.fromValue(map['preTokenGeneration'] as String),
      preTokenGenerationConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolLambdaConfigPreTokenGenerationConfig>(map['preTokenGenerationConfigs']!, (value) => GetUserPoolLambdaConfigPreTokenGenerationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      userMigration: pulumi.Input.fromValue(map['userMigration'] as String),
      verifyAuthChallengeResponse: pulumi.Input.fromValue(map['verifyAuthChallengeResponse'] as String),
    );
  }
}

