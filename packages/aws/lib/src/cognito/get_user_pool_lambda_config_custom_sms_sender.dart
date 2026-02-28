// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolLambdaConfigCustomSmsSender {
  /// - ARN of the Lambda function.
  final String lambdaArn;

  /// - Version of the Lambda function.
  final String lambdaVersion;

  /// Creates a new [GetUserPoolLambdaConfigCustomSmsSender].
  /// [lambdaArn] - ARN of the Lambda function.
  /// [lambdaVersion] - Version of the Lambda function.
  GetUserPoolLambdaConfigCustomSmsSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    map['lambdaVersion'] = lambdaVersion;
    return map;
  }

  factory GetUserPoolLambdaConfigCustomSmsSender.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolLambdaConfigCustomSmsSender(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}
