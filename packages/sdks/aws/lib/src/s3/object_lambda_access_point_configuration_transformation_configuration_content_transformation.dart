// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration_transformation_configuration_content_transformation_aws_lambda.dart';

class ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation {
  /// Configuration for an AWS Lambda function. See AWS Lambda below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda> awsLambda;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation].
  /// [awsLambda] Configuration for an AWS Lambda function. See AWS Lambda below for more details.
  const ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation({
    required this.awsLambda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLambda': pulumi.Input.mapInputValue<ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda, Map<String, dynamic>>(awsLambda, (value) => value.toMap()),
    };
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation(
      awsLambda: pulumi.Input.fromValue(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda.fromMap((map['awsLambda']! as Map).cast<String, dynamic>())),
    );
  }
}

