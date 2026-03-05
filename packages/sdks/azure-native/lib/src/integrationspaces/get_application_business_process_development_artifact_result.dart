// ignore_for_file: unused_element, unnecessary_cast

import 'business_process_development_artifact_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplicationBusinessProcessDevelopmentArtifact.
class GetApplicationBusinessProcessDevelopmentArtifactResult {
  /// The name of the business process development artifact.
  final String name;
  /// The properties of the business process development artifact.
  final BusinessProcessDevelopmentArtifactPropertiesResponse properties;
  /// The system data of the business process development artifact.
  final SystemDataResponse systemData;

  /// Creates a new [GetApplicationBusinessProcessDevelopmentArtifactResult].
  /// [name] The name of the business process development artifact.
  /// [properties] The properties of the business process development artifact.
  /// [systemData] The system data of the business process development artifact.
  GetApplicationBusinessProcessDevelopmentArtifactResult({
    required this.name,
    required this.properties,
    required this.systemData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
    };
  }

  factory GetApplicationBusinessProcessDevelopmentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationBusinessProcessDevelopmentArtifactResult(
      name: map['name'] as String,
      properties: BusinessProcessDevelopmentArtifactPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
    );
  }
}

