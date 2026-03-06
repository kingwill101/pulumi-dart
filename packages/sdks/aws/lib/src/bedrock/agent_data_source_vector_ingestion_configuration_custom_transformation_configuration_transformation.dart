// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation_transformation_function.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation {
  /// When the service applies the transformation. Currently only `POST_CHUNKING` is supported.
  final pulumi.Input<String> stepToApply;
  /// The lambda function that processes documents.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction>? transformationFunction;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation].
  /// [stepToApply] When the service applies the transformation. Currently only `POST_CHUNKING` is supported.
  /// [transformationFunction] The lambda function that processes documents.
  const AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation({
    required this.stepToApply,
    this.transformationFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stepToApply': stepToApply,
      'transformationFunction': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction, Map<String, dynamic>>(transformationFunction, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation(
      stepToApply: pulumi.Input.fromValue(map['stepToApply'] as String),
      transformationFunction: (() { final guardedValue = map['transformationFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

