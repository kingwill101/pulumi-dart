// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAssessment.
class GetAssessmentResult {
  /// Assessment Id.
  final String? assessmentId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Assessment Type Description.
  final String? description;
  /// Assessment Id
  final String? id;
  /// Assessment Type Locale.
  final String? locale;
  /// Assessment Name
  final String? name;
  /// Assessment Score.
  final int? score;
  /// Assessment State.
  final String? state;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource Type
  final String? type;
  /// Assessment Type Id.
  final String? typeId;
  /// Assessment Type Version.
  final String? typeVersion;
  /// Workload Id.
  final String? workloadId;
  /// Workload Name.
  final String? workloadName;

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
    this.assessmentId,
    this.azureApiVersion,
    this.description,
    this.id,
    this.locale,
    this.name,
    this.score,
    this.state,
    this.systemData,
    this.type,
    this.typeId,
    this.typeVersion,
    this.workloadId,
    this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': ?assessmentId,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'locale': ?locale,
      'name': ?name,
      'score': ?score,
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'typeId': ?typeId,
      'typeVersion': ?typeVersion,
      'workloadId': ?workloadId,
      'workloadName': ?workloadName,
    };
  }

  factory GetAssessmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentResult(
      assessmentId: (() { final guardedValue = map['assessmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      score: (() { final guardedValue = map['score']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeId: (() { final guardedValue = map['typeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeVersion: (() { final guardedValue = map['typeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadName: (() { final guardedValue = map['workloadName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
