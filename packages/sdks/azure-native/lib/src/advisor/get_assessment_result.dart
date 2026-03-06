// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAssessment.
class GetAssessmentResult {
  /// Assessment Id.
  final String assessmentId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Assessment Type Description.
  final String description;
  /// Assessment Id
  final String id;
  /// Assessment Type Locale.
  final String? locale;
  /// Assessment Name
  final String name;
  /// Assessment Score.
  final int score;
  /// Assessment State.
  final String state;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource Type
  final String type;
  /// Assessment Type Id.
  final String? typeId;
  /// Assessment Type Version.
  final String typeVersion;
  /// Workload Id.
  final String? workloadId;
  /// Workload Name.
  final String workloadName;

  /// Creates a new [GetAssessmentResult].
  /// [assessmentId] Assessment Id.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Assessment Type Description.
  /// [id] Assessment Id
  /// [locale] Assessment Type Locale.
  /// [name] Assessment Name
  /// [score] Assessment Score.
  /// [state] Assessment State.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource Type
  /// [typeId] Assessment Type Id.
  /// [typeVersion] Assessment Type Version.
  /// [workloadId] Workload Id.
  /// [workloadName] Workload Name.
  const GetAssessmentResult({
    required this.assessmentId,
    required this.azureApiVersion,
    required this.description,
    required this.id,
    this.locale,
    required this.name,
    required this.score,
    required this.state,
    required this.systemData,
    required this.type,
    this.typeId,
    required this.typeVersion,
    this.workloadId,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': assessmentId,
      'azureApiVersion': azureApiVersion,
      'description': description,
      'id': id,
      'locale': ?locale,
      'name': name,
      'score': score,
      'state': state,
      'systemData': systemData.toMap(),
      'type': type,
      'typeId': ?typeId,
      'typeVersion': typeVersion,
      'workloadId': ?workloadId,
      'workloadName': workloadName,
    };
  }

  factory GetAssessmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentResult(
      assessmentId: map['assessmentId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      score: map['score'] as int,
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      typeId: (() { final guardedValue = map['typeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeVersion: map['typeVersion'] as String,
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadName: map['workloadName'] as String,
    );
  }
}

