// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration {
  /// The ARN of the lambda to use for custom transformation.
  final String lambdaArn;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration].
  /// [lambdaArn] The ARN of the lambda to use for custom transformation.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration({
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration(
      lambdaArn: map['lambdaArn'] as String,
    );
  }
}
