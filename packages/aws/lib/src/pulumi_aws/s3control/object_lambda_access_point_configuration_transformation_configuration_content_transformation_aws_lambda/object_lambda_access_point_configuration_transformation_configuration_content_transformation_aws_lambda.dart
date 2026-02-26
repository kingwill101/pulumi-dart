// ignore_for_file: unused_element, unnecessary_cast

class ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda {
  /// The Amazon Resource Name (ARN) of the AWS Lambda function.
  final String functionArn;

  /// Additional JSON that provides supplemental data to the Lambda function used to transform objects.
  final String? functionPayload;

  ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda({
    required this.functionArn,
    this.functionPayload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    final functionPayloadValue = functionPayload;
    if (functionPayloadValue != null) {
      map['functionPayload'] = functionPayloadValue;
    }
    return map;
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda.fromMap(
      Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda(
      functionArn: map['functionArn'] as String,
      functionPayload: map['functionPayload'] == null
          ? null
          : map['functionPayload'] as String,
    );
  }
}
