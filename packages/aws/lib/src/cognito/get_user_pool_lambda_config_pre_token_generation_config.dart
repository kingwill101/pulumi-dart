// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolLambdaConfigPreTokenGenerationConfig {
  /// - ARN of the Lambda function.
  final String lambdaArn;

  /// - Version of the Lambda function.
  final String lambdaVersion;

  /// Creates a new [GetUserPoolLambdaConfigPreTokenGenerationConfig].
  /// [lambdaArn] - ARN of the Lambda function.
  /// [lambdaVersion] - Version of the Lambda function.
  GetUserPoolLambdaConfigPreTokenGenerationConfig({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    map['lambdaVersion'] = lambdaVersion;
    return map;
  }

  factory GetUserPoolLambdaConfigPreTokenGenerationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolLambdaConfigPreTokenGenerationConfig(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}
