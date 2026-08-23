// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_properties_response.dart';

/// Result data returned by getAssessment.
class GetAssessmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// For optimistic concurrency control.
  final String? eTag;
  /// Path reference to this assessment. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/assessment/{assessmentName}
  final String id;
  /// Unique name of an assessment.
  final String name;
  /// Properties of the assessment.
  final AssessmentPropertiesResponse properties;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects/groups/assessments].
  final String type;

  /// Creates a new [GetAssessmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this assessment. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/assessment/{assessmentName}
  /// [name] Unique name of an assessment.
  /// [properties] Properties of the assessment.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects/groups/assessments].
  const GetAssessmentResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetAssessmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: AssessmentPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
