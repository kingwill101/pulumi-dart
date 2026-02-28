// ignore_for_file: unused_element, unnecessary_cast

import 'object_lambda_access_point_configuration_transformation_configuration_content_transformation_aws_lambda.dart';

class ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation {
  /// Configuration for an AWS Lambda function. See AWS Lambda below for more details.
  final ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda
      awsLambda;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation].
  /// [awsLambda] Configuration for an AWS Lambda function. See AWS Lambda below for more details.
  ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation({
    required this.awsLambda,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsLambda'] = awsLambda.toMap();
    return map;
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation.fromMap(
      Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation(
      awsLambda:
          ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda
              .fromMap((map['awsLambda'] as Map).cast<String, dynamic>()),
    );
  }
}
