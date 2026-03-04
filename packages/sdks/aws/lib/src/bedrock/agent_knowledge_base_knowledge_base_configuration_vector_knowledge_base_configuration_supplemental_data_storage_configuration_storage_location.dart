// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration_storage_location_s3_location.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation {
  /// Contains information about the Amazon S3 location for the extracted images.  See `s3_location` block for details.
  final pulumi.Input<
    AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location
  >?
  s3Location;

  /// Storage service used for this location. `S3` is the only valid value.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation].
  /// [s3Location] Contains information about the Amazon S3 location for the extracted images.  See `s3_location` block for details.
  /// [type] Storage service used for this location. `S3` is the only valid value.
  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation({
    this.s3Location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Location':
          ?pulumi.Input.mapOptionalInputValue<
            AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location,
            Map<String, dynamic>
          >(s3Location, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation(
      s3Location: (() {
        final guardedValue = map['s3Location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
