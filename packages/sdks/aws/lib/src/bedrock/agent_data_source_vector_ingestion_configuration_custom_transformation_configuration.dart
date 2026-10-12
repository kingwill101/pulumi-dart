// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage.dart';
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_transformation.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration {
  /// Intermediate storage for custom transformation. See `intermediateStorage` Block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage?>? intermediateStorage;
  /// Custom processing step for documents moving through the data source ingestion pipeline. See `transformation` Block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation?>? transformation;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration].
  /// [intermediateStorage] Intermediate storage for custom transformation. See `intermediateStorage` Block for details.
  /// [transformation] Custom processing step for documents moving through the data source ingestion pipeline. See `transformation` Block for details.
  const AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration({
    this.intermediateStorage,
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateStorage': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage, Map<String, dynamic>>(intermediateStorage, (value) => value.toMap()),
      'transformation': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation, Map<String, dynamic>>(transformation, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration(
      intermediateStorage: (() { final guardedValue = map['intermediateStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformation: (() { final guardedValue = map['transformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
