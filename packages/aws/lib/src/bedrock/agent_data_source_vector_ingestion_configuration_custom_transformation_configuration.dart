// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage.dart';
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration {
  /// The intermediate storage for custom transformation.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage?
  intermediateStorage;

  /// A custom processing step for documents moving through the data source ingestion pipeline.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation?
  transformation;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration].
  /// [intermediateStorage] The intermediate storage for custom transformation.
  /// [transformation] A custom processing step for documents moving through the data source ingestion pipeline.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration({
    this.intermediateStorage,
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateStorage': ?intermediateStorage == null
          ? null
          : intermediateStorage!.toMap(),
      'transformation': ?transformation == null
          ? null
          : transformation!.toMap(),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration(
      intermediateStorage: map['intermediateStorage'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage.fromMap(
              (map['intermediateStorage'] as Map).cast<String, dynamic>(),
            ),
      transformation: map['transformation'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation.fromMap(
              (map['transformation'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
