// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage_s3_location.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage {
  /// Configuration block for intermedia S3 storage.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location?
      s3Location;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage].
  /// [s3Location] Configuration block for intermedia S3 storage.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage({
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3LocationValue = s3Location;
    if (s3LocationValue != null) {
      map['s3Location'] = s3LocationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage(
      s3Location: map['s3Location'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location
              .fromMap((map['s3Location'] as Map).cast<String, dynamic>()),
    );
  }
}
