// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prediction_response_grades.dart';
import 'prediction_response_mappings.dart';
import 'prediction_response_system_generated_entities.dart';

/// Result data returned by getPrediction.
class GetPredictionResult {
  /// Whether do auto analyze.
  final bool? autoAnalyze;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Description of the prediction.
  final Map<String, String>? description;
  /// Display name of the prediction.
  final Map<String, String>? displayName;
  /// The prediction grades.
  final List<PredictionResponseGrades>? grades;
  /// Resource ID.
  final String? id;
  /// Interaction types involved in the prediction.
  final List<String>? involvedInteractionTypes;
  /// KPI types involved in the prediction.
  final List<String>? involvedKpiTypes;
  /// Relationships involved in the prediction.
  final List<String>? involvedRelationships;
  /// Definition of the link mapping of prediction.
  final PredictionResponseMappings? mappings;
  /// Resource name.
  final String? name;
  /// Negative outcome expression.
  final String? negativeOutcomeExpression;
  /// Positive outcome expression.
  final String? positiveOutcomeExpression;
  /// Name of the prediction.
  final String? predictionName;
  /// Primary profile type.
  final String? primaryProfileType;
  /// Provisioning state.
  final String? provisioningState;
  /// Scope expression.
  final String? scopeExpression;
  /// Score label.
  final String? scoreLabel;
  /// System generated entities.
  final PredictionResponseSystemGeneratedEntities? systemGeneratedEntities;
  /// The hub name.
  final String? tenantId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetPredictionResult].
  /// [autoAnalyze] Whether do auto analyze.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the prediction.
  /// [displayName] Display name of the prediction.
  /// [grades] The prediction grades.
  /// [id] Resource ID.
  /// [involvedInteractionTypes] Interaction types involved in the prediction.
  /// [involvedKpiTypes] KPI types involved in the prediction.
  /// [involvedRelationships] Relationships involved in the prediction.
  /// [mappings] Definition of the link mapping of prediction.
  /// [name] Resource name.
  /// [negativeOutcomeExpression] Negative outcome expression.
  /// [positiveOutcomeExpression] Positive outcome expression.
  /// [predictionName] Name of the prediction.
  /// [primaryProfileType] Primary profile type.
  /// [provisioningState] Provisioning state.
  /// [scopeExpression] Scope expression.
  /// [scoreLabel] Score label.
  /// [systemGeneratedEntities] System generated entities.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  const GetPredictionResult({
    this.autoAnalyze,
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.grades,
    this.id,
    this.involvedInteractionTypes,
    this.involvedKpiTypes,
    this.involvedRelationships,
    this.mappings,
    this.name,
    this.negativeOutcomeExpression,
    this.positiveOutcomeExpression,
    this.predictionName,
    this.primaryProfileType,
    this.provisioningState,
    this.scopeExpression,
    this.scoreLabel,
    this.systemGeneratedEntities,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnalyze': ?autoAnalyze,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'grades': ?(() { final guardedValue = grades; if (guardedValue == null) return null; return pulumi.Input.encodeList<PredictionResponseGrades, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'involvedInteractionTypes': ?involvedInteractionTypes,
      'involvedKpiTypes': ?involvedKpiTypes,
      'involvedRelationships': ?involvedRelationships,
      'mappings': ?mappings?.toMap(),
      'name': ?name,
      'negativeOutcomeExpression': ?negativeOutcomeExpression,
      'positiveOutcomeExpression': ?positiveOutcomeExpression,
      'predictionName': ?predictionName,
      'primaryProfileType': ?primaryProfileType,
      'provisioningState': ?provisioningState,
      'scopeExpression': ?scopeExpression,
      'scoreLabel': ?scoreLabel,
      'systemGeneratedEntities': ?systemGeneratedEntities?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetPredictionResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionResult(
      autoAnalyze: (() { final guardedValue = map['autoAnalyze']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      grades: (() { final guardedValue = map['grades']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PredictionResponseGrades>(guardedValue, (value) => PredictionResponseGrades.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      involvedInteractionTypes: (() { final guardedValue = map['involvedInteractionTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      involvedKpiTypes: (() { final guardedValue = map['involvedKpiTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      involvedRelationships: (() { final guardedValue = map['involvedRelationships']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return PredictionResponseMappings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      negativeOutcomeExpression: (() { final guardedValue = map['negativeOutcomeExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      positiveOutcomeExpression: (() { final guardedValue = map['positiveOutcomeExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      predictionName: (() { final guardedValue = map['predictionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryProfileType: (() { final guardedValue = map['primaryProfileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeExpression: (() { final guardedValue = map['scopeExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scoreLabel: (() { final guardedValue = map['scoreLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemGeneratedEntities: (() { final guardedValue = map['systemGeneratedEntities']; if (guardedValue == null) return null; return PredictionResponseSystemGeneratedEntities.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
