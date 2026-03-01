// ignore_for_file: unused_element, unnecessary_cast

import 'business_process_development_artifact_properties_response.dart';
import 'system_data_response.dart';

/// The business process development artifact save or get response.
class SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse {
  /// The name of the business process development artifact.
  final String name;
  /// The properties of the business process development artifact.
  final BusinessProcessDevelopmentArtifactPropertiesResponse? properties;
  /// The system data of the business process development artifact.
  final SystemDataResponse systemData;

  /// Creates a new [SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse].
  /// [name] The name of the business process development artifact.
  /// [properties] The properties of the business process development artifact.
  /// [systemData] The system data of the business process development artifact.
  SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse({
    required this.name,
    this.properties,
    required this.systemData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
    };
  }

  factory SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse.fromMap(Map<String, dynamic> map) {
    return SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse(
      name: map['name'] as String,
      properties: map['properties'] == null ? null : BusinessProcessDevelopmentArtifactPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
    );
  }
}

