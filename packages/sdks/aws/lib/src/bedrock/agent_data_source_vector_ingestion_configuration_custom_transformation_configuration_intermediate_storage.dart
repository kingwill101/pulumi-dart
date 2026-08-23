// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration_intermediate_storage_s3_location.dart';

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage {
  /// Configuration block for intermedia S3 storage.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location>? s3Location;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage].
  /// [s3Location] Configuration block for intermedia S3 storage.
  const AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage({
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Location': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location, Map<String, dynamic>>(s3Location, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage(
      s3Location: (() { final guardedValue = map['s3Location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
