// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prediction_grades.dart';
import 'prediction_mappings.dart';

/// {@template pulumi_customerinsights_prediction_args_doc}
/// The set of arguments for Prediction.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_prediction_args_doc}
class PredictionArgs {
  /// Whether do auto analyze.
  final pulumi.Input<bool> autoAnalyze;
  /// Description of the prediction.
  final pulumi.Input<Map<String, String>>? description;
  /// Display name of the prediction.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The prediction grades.
  final pulumi.Input<List<PredictionGrades>>? grades;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Interaction types involved in the prediction.
  final pulumi.Input<List<String>>? involvedInteractionTypes;
  /// KPI types involved in the prediction.
  final pulumi.Input<List<String>>? involvedKpiTypes;
  /// Relationships involved in the prediction.
  final pulumi.Input<List<String>>? involvedRelationships;
  /// Definition of the link mapping of prediction.
  final pulumi.Input<PredictionMappings> mappings;
  /// Negative outcome expression.
  final pulumi.Input<String> negativeOutcomeExpression;
  /// Positive outcome expression.
  final pulumi.Input<String> positiveOutcomeExpression;
  /// Name of the prediction.
  final pulumi.Input<String>? predictionName;
  /// Primary profile type.
  final pulumi.Input<String> primaryProfileType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Scope expression.
  final pulumi.Input<String> scopeExpression;
  /// Score label.
  final pulumi.Input<String> scoreLabel;

  /// Creates a new [PredictionArgs].
  /// [autoAnalyze] Whether do auto analyze.
  /// [description] Description of the prediction.
  /// [displayName] Display name of the prediction.
  /// [grades] The prediction grades.
  /// [hubName] The name of the hub.
  /// [involvedInteractionTypes] Interaction types involved in the prediction.
  /// [involvedKpiTypes] KPI types involved in the prediction.
  /// [involvedRelationships] Relationships involved in the prediction.
  /// [mappings] Definition of the link mapping of prediction.
  /// [negativeOutcomeExpression] Negative outcome expression.
  /// [positiveOutcomeExpression] Positive outcome expression.
  /// [predictionName] Name of the prediction.
  /// [primaryProfileType] Primary profile type.
  /// [resourceGroupName] The name of the resource group.
  /// [scopeExpression] Scope expression.
  /// [scoreLabel] Score label.
  const PredictionArgs({
    required this.autoAnalyze,
    this.description,
    this.displayName,
    this.grades,
    required this.hubName,
    this.involvedInteractionTypes,
    this.involvedKpiTypes,
    this.involvedRelationships,
    required this.mappings,
    required this.negativeOutcomeExpression,
    required this.positiveOutcomeExpression,
    this.predictionName,
    required this.primaryProfileType,
    required this.resourceGroupName,
    required this.scopeExpression,
    required this.scoreLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAnalyze': autoAnalyze,
      'description': ?description,
      'displayName': ?displayName,
      'grades': ?pulumi.Input.mapOptionalInputValue<List<PredictionGrades>, List<Map<String, dynamic>>>(grades, (value) => pulumi.Input.encodeList<PredictionGrades, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hubName': hubName,
      'involvedInteractionTypes': ?involvedInteractionTypes,
      'involvedKpiTypes': ?involvedKpiTypes,
      'involvedRelationships': ?involvedRelationships,
      'mappings': pulumi.Input.mapInputValue<PredictionMappings, Map<String, dynamic>>(mappings, (value) => value.toMap()),
      'negativeOutcomeExpression': negativeOutcomeExpression,
      'positiveOutcomeExpression': positiveOutcomeExpression,
      'predictionName': ?predictionName,
      'primaryProfileType': primaryProfileType,
      'resourceGroupName': resourceGroupName,
      'scopeExpression': scopeExpression,
      'scoreLabel': scoreLabel,
    };
  }

  factory PredictionArgs.fromMap(Map<String, dynamic> map) {
    return PredictionArgs(
      autoAnalyze: pulumi.Input.fromValue(map['autoAnalyze'] as bool),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      grades: (() { final guardedValue = map['grades']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PredictionGrades>(guardedValue, (value) => PredictionGrades.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      involvedInteractionTypes: (() { final guardedValue = map['involvedInteractionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      involvedKpiTypes: (() { final guardedValue = map['involvedKpiTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      involvedRelationships: (() { final guardedValue = map['involvedRelationships']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mappings: pulumi.Input.fromValue(PredictionMappings.fromMap((map['mappings']! as Map).cast<String, dynamic>())),
      negativeOutcomeExpression: pulumi.Input.fromValue(map['negativeOutcomeExpression'] as String),
      positiveOutcomeExpression: pulumi.Input.fromValue(map['positiveOutcomeExpression'] as String),
      predictionName: (() { final guardedValue = map['predictionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryProfileType: pulumi.Input.fromValue(map['primaryProfileType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeExpression: pulumi.Input.fromValue(map['scopeExpression'] as String),
      scoreLabel: pulumi.Input.fromValue(map['scoreLabel'] as String),
    );
  }
}
