// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolLambdaConfigCustomEmailSender {
  /// - ARN of the Lambda function.
  final String lambdaArn;

  /// - Version of the Lambda function.
  final String lambdaVersion;

  /// Creates a new [GetUserPoolLambdaConfigCustomEmailSender].
  /// [lambdaArn] - ARN of the Lambda function.
  /// [lambdaVersion] - Version of the Lambda function.
  GetUserPoolLambdaConfigCustomEmailSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaVersion': lambdaVersion,
    };
  }

  factory GetUserPoolLambdaConfigCustomEmailSender.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserPoolLambdaConfigCustomEmailSender(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}
