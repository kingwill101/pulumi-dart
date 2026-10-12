// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function_transformation_lambda_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction {
  /// Configuration of the Lambda function. See `transformationLambdaConfiguration` Block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration?>? transformationLambdaConfiguration;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction].
  /// [transformationLambdaConfiguration] Configuration of the Lambda function. See `transformationLambdaConfiguration` Block for details.
  const AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction({
    this.transformationLambdaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformationLambdaConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration, Map<String, dynamic>>(transformationLambdaConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction(
      transformationLambdaConfiguration: (() { final guardedValue = map['transformationLambdaConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
