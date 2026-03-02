// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolLambdaConfigCustomSmsSender {
  /// - ARN of the Lambda function.
  final pulumi.Input<String> lambdaArn;
  /// - Version of the Lambda function.
  final pulumi.Input<String> lambdaVersion;

  /// Creates a new [GetUserPoolLambdaConfigCustomSmsSender].
  /// [lambdaArn] - ARN of the Lambda function.
  /// [lambdaVersion] - Version of the Lambda function.
  GetUserPoolLambdaConfigCustomSmsSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'lambdaVersion': lambdaVersion,
    };
  }

  factory GetUserPoolLambdaConfigCustomSmsSender.fromMap(Map<String, dynamic> map) {
    return GetUserPoolLambdaConfigCustomSmsSender(
      lambdaArn: (map['lambdaArn'] as String).input(),
      lambdaVersion: (map['lambdaVersion'] as String).input(),
    );
  }
}

