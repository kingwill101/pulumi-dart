// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function_transformation_lambda_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction {
  /// The configuration of the lambda function.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration?
  transformationLambdaConfiguration;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction].
  /// [transformationLambdaConfiguration] The configuration of the lambda function.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction({
    this.transformationLambdaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformationLambdaConfiguration':
          ?transformationLambdaConfiguration == null
          ? null
          : transformationLambdaConfiguration!.toMap(),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction(
      transformationLambdaConfiguration:
          map['transformationLambdaConfiguration'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration.fromMap(
              (map['transformationLambdaConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
