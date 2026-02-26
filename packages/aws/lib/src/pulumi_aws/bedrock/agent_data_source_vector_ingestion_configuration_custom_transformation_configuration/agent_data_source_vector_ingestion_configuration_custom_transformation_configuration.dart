// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage/agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage.dart';
import '../agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation/agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration {
  /// The intermediate storage for custom transformation.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage?
      intermediateStorage;

  /// A custom processing step for documents moving through the data source ingestion pipeline.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation?
      transformation;

  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration({
    this.intermediateStorage,
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intermediateStorageValue = intermediateStorage;
    if (intermediateStorageValue != null) {
      map['intermediateStorage'] = intermediateStorageValue.toMap();
    }
    final transformationValue = transformation;
    if (transformationValue != null) {
      map['transformation'] = transformationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration(
      intermediateStorage: map['intermediateStorage'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage
              .fromMap(
                  (map['intermediateStorage'] as Map).cast<String, dynamic>()),
      transformation: map['transformation'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation
              .fromMap((map['transformation'] as Map).cast<String, dynamic>()),
    );
  }
}
