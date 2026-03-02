// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prediction_response_grades.dart';
import 'prediction_response_mappings.dart';
import 'prediction_response_system_generated_entities.dart';

/// Result data returned by getPrediction.
class GetPredictionResult {
  /// Whether do auto analyze.
  final bool autoAnalyze;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the prediction.
  final Map<String, String>? description;
  /// Display name of the prediction.
  final Map<String, String>? displayName;
  /// The prediction grades.
  final List<PredictionResponseGrades>? grades;
  /// Resource ID.
  final String id;
  /// Interaction types involved in the prediction.
  final List<String>? involvedInteractionTypes;
  /// KPI types involved in the prediction.
  final List<String>? involvedKpiTypes;
  /// Relationships involved in the prediction.
  final List<String>? involvedRelationships;
  /// Definition of the link mapping of prediction.
  final PredictionResponseMappings mappings;
  /// Resource name.
  final String name;
  /// Negative outcome expression.
  final String negativeOutcomeExpression;
  /// Positive outcome expression.
  final String positiveOutcomeExpression;
  /// Name of the prediction.
  final String? predictionName;
  /// Primary profile type.
  final String primaryProfileType;
  /// Provisioning state.
  final String provisioningState;
  /// Scope expression.
  final String scopeExpression;
  /// Score label.
  final String scoreLabel;
  /// System generated entities.
  final PredictionResponseSystemGeneratedEntities systemGeneratedEntities;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;

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
  GetPredictionResult({
    required this.autoAnalyze,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.grades,
    required this.id,
    this.involvedInteractionTypes,
    this.involvedKpiTypes,
    this.involvedRelationships,
    required this.mappings,
    required this.name,
    required this.negativeOutcomeExpression,
    required this.positiveOutcomeExpression,
    this.predictionName,
    required this.primaryProfileType,
    required this.provisioningState,
    required this.scopeExpression,
    required this.scoreLabel,
    required this.systemGeneratedEntities,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnalyze': autoAnalyze,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'grades': ?grades == null ? null : pulumi.Input.encodeList<PredictionResponseGrades, Map<String, dynamic>>(grades!, (value) => value.toMap()),
      'id': id,
      'involvedInteractionTypes': ?involvedInteractionTypes,
      'involvedKpiTypes': ?involvedKpiTypes,
      'involvedRelationships': ?involvedRelationships,
      'mappings': mappings.toMap(),
      'name': name,
      'negativeOutcomeExpression': negativeOutcomeExpression,
      'positiveOutcomeExpression': positiveOutcomeExpression,
      'predictionName': ?predictionName,
      'primaryProfileType': primaryProfileType,
      'provisioningState': provisioningState,
      'scopeExpression': scopeExpression,
      'scoreLabel': scoreLabel,
      'systemGeneratedEntities': systemGeneratedEntities.toMap(),
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetPredictionResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionResult(
      autoAnalyze: map['autoAnalyze'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : (map['description']! as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as Map).cast<String, String>(),
      grades: map['grades'] == null ? null : pulumi.Input.decodeList<PredictionResponseGrades>(map['grades']!, (value) => PredictionResponseGrades.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      involvedInteractionTypes: map['involvedInteractionTypes'] == null ? null : (map['involvedInteractionTypes']! as List).cast<String>(),
      involvedKpiTypes: map['involvedKpiTypes'] == null ? null : (map['involvedKpiTypes']! as List).cast<String>(),
      involvedRelationships: map['involvedRelationships'] == null ? null : (map['involvedRelationships']! as List).cast<String>(),
      mappings: PredictionResponseMappings.fromMap((map['mappings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      negativeOutcomeExpression: map['negativeOutcomeExpression'] as String,
      positiveOutcomeExpression: map['positiveOutcomeExpression'] as String,
      predictionName: map['predictionName'] == null ? null : map['predictionName']! as String,
      primaryProfileType: map['primaryProfileType'] as String,
      provisioningState: map['provisioningState'] as String,
      scopeExpression: map['scopeExpression'] as String,
      scoreLabel: map['scoreLabel'] as String,
      systemGeneratedEntities: PredictionResponseSystemGeneratedEntities.fromMap((map['systemGeneratedEntities'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

