// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation {
  /// When the service applies the transformation. Currently only `POST_CHUNKING` is supported.
  final String stepToApply;

  /// The lambda function that processes documents.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction?
      transformationFunction;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation].
  /// [stepToApply] When the service applies the transformation. Currently only `POST_CHUNKING` is supported.
  /// [transformationFunction] The lambda function that processes documents.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation({
    required this.stepToApply,
    this.transformationFunction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stepToApply'] = stepToApply;
    final transformationFunctionValue = transformationFunction;
    if (transformationFunctionValue != null) {
      map['transformationFunction'] = transformationFunctionValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation(
      stepToApply: map['stepToApply'] as String,
      transformationFunction: map['transformationFunction'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction
              .fromMap((map['transformationFunction'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
