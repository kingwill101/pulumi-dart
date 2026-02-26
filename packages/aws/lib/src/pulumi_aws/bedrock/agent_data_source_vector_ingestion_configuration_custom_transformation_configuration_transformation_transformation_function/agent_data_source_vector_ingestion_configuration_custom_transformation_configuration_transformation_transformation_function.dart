// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function_transformation_lambda_configuration/agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function_transformation_lambda_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction {
  /// The configuration of the lambda function.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration?
      transformationLambdaConfiguration;

  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction({
    this.transformationLambdaConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final transformationLambdaConfigurationValue =
        transformationLambdaConfiguration;
    if (transformationLambdaConfigurationValue != null) {
      map['transformationLambdaConfiguration'] =
          transformationLambdaConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction(
      transformationLambdaConfiguration: map[
                  'transformationLambdaConfiguration'] ==
              null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration
              .fromMap((map['transformationLambdaConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
