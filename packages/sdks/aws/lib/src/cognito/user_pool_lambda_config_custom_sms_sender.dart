// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolLambdaConfigCustomSmsSender {
  /// Lambda ARN of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
  final pulumi.Input<String> lambdaArn;
  /// The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is `V1_0`.
  final pulumi.Input<String> lambdaVersion;

  /// Creates a new [UserPoolLambdaConfigCustomSmsSender].
  /// [lambdaArn] Lambda ARN of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
  /// [lambdaVersion] The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is `V1_0`.
  const UserPoolLambdaConfigCustomSmsSender({
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
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      lambdaVersion: pulumi.Input.fromValue(map['lambdaVersion'] as String),
    );
  }
}
