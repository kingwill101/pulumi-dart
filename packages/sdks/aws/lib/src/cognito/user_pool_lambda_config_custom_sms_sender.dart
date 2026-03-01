// ignore_for_file: unused_element, unnecessary_cast


class UserPoolLambdaConfigCustomSmsSender {
  /// The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
  final String lambdaArn;
  /// The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is `V1_0`.
  final String lambdaVersion;

  /// Creates a new [UserPoolLambdaConfigCustomSmsSender].
  /// [lambdaArn] The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
  /// [lambdaVersion] The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is `V1_0`.
  UserPoolLambdaConfigCustomSmsSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaVersion': lambdaVersion,
    };
  }

  factory UserPoolLambdaConfigCustomSmsSender.fromMap(Map<String, dynamic> map) {
    return UserPoolLambdaConfigCustomSmsSender(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}

