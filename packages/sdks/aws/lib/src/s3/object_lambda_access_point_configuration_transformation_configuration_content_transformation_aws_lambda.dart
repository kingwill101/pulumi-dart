// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda {
  /// Amazon Resource Name (ARN) of the AWS Lambda function.
  final pulumi.Input<String> functionArn;
  /// Additional JSON that provides supplemental data to the Lambda function used to transform objects.
  final pulumi.Input<String>? functionPayload;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda].
  /// [functionArn] Amazon Resource Name (ARN) of the AWS Lambda function.
  /// [functionPayload] Additional JSON that provides supplemental data to the Lambda function used to transform objects.
  const ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda({
    required this.functionArn,
    this.functionPayload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'functionPayload': ?functionPayload,
    };
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda(
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
      functionPayload: (() { final guardedValue = map['functionPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
