// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolLambdaConfigCustomEmailSender {
  /// - ARN of the Lambda function.
  final pulumi.Input<String> lambdaArn;
  /// - Version of the Lambda function.
  final pulumi.Input<String> lambdaVersion;

  /// Creates a new [GetUserPoolLambdaConfigCustomEmailSender].
  /// [lambdaArn] - ARN of the Lambda function.
  /// [lambdaVersion] - Version of the Lambda function.
  const GetUserPoolLambdaConfigCustomEmailSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaVersion': lambdaVersion,
    };
  }

  factory GetUserPoolLambdaConfigCustomEmailSender.fromMap(Map<String, dynamic> map) {
    return GetUserPoolLambdaConfigCustomEmailSender(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      lambdaVersion: pulumi.Input.fromValue(map['lambdaVersion'] as String),
    );
  }
}
