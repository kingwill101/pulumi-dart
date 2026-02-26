// ignore_for_file: unused_element, unnecessary_cast

class UserPoolLambdaConfigCustomEmailSender {
  /// The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send email notifications to users.
  final String lambdaArn;

  /// The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom email Lambda function. The only supported value is `V1_0`.
  final String lambdaVersion;

  UserPoolLambdaConfigCustomEmailSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    map['lambdaVersion'] = lambdaVersion;
    return map;
  }

  factory UserPoolLambdaConfigCustomEmailSender.fromMap(
      Map<String, dynamic> map) {
    return UserPoolLambdaConfigCustomEmailSender(
      lambdaArn: map['lambdaArn'] as String,
      lambdaVersion: map['lambdaVersion'] as String,
    );
  }
}
