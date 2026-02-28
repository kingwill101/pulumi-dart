// ignore_for_file: unused_element, unnecessary_cast

class UserPoolLambdaConfigPreTokenGenerationConfig {
  final String lambdaArn;
  final String lambdaVersion;

  /// Creates a new [UserPoolLambdaConfigPreTokenGenerationConfig].
  /// [lambdaArn] Required.
  /// [lambdaVersion] Required.
  UserPoolLambdaConfigPreTokenGenerationConfig({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    map['lambdaVersion'] = lambdaVersion;
    return map;
  }

  factory UserPoolLambdaConfigPreTokenGenerationConfig.fromMap(
      Map<String, dynamic> map) {
    return UserPoolLambdaConfigPreTokenGenerationConfig(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}
