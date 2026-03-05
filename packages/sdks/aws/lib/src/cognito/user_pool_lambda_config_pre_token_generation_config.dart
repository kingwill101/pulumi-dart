// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolLambdaConfigPreTokenGenerationConfig {
  final pulumi.Input<String> lambdaArn;
  final pulumi.Input<String> lambdaVersion;

  /// Creates a new [UserPoolLambdaConfigPreTokenGenerationConfig].
  /// [lambdaArn] Required.
  /// [lambdaVersion] Required.
  UserPoolLambdaConfigPreTokenGenerationConfig({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaVersion': lambdaVersion,
    };
  }

  factory UserPoolLambdaConfigPreTokenGenerationConfig.fromMap(Map<String, dynamic> map) {
    return UserPoolLambdaConfigPreTokenGenerationConfig(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      lambdaVersion: pulumi.Input.fromValue(map['lambdaVersion'] as String),
    );
  }
}

