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
  PredictionArgs({
    required bool autoAnalyze,
    Map<String, String>? description,
    Map<String, String>? displayName,
    List<PredictionGrades>? grades,
    required String hubName,
    List<String>? involvedInteractionTypes,
    List<String>? involvedKpiTypes,
    List<String>? involvedRelationships,
    required PredictionMappings mappings,
    required String negativeOutcomeExpression,
    required String positiveOutcomeExpression,
    String? predictionName,
    required String primaryProfileType,
    required String resourceGroupName,
    required String scopeExpression,
    required String scoreLabel,
  }) :
      autoAnalyze = pulumi.Input.asInput<bool>(autoAnalyze),
      description = pulumi.Input.asOptionalInput<Map<String, String>>(description),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      grades = pulumi.Input.asOptionalInput<List<PredictionGrades>>(grades),
      hubName = pulumi.Input.asInput<String>(hubName),
      involvedInteractionTypes = pulumi.Input.asOptionalInput<List<String>>(involvedInteractionTypes),
      involvedKpiTypes = pulumi.Input.asOptionalInput<List<String>>(involvedKpiTypes),
      involvedRelationships = pulumi.Input.asOptionalInput<List<String>>(involvedRelationships),
      mappings = pulumi.Input.asInput<PredictionMappings>(mappings),
      negativeOutcomeExpression = pulumi.Input.asInput<String>(negativeOutcomeExpression),
      positiveOutcomeExpression = pulumi.Input.asInput<String>(positiveOutcomeExpression),
      predictionName = pulumi.Input.asOptionalInput<String>(predictionName),
      primaryProfileType = pulumi.Input.asInput<String>(primaryProfileType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeExpression = pulumi.Input.asInput<String>(scopeExpression),
      scoreLabel = pulumi.Input.asInput<String>(scoreLabel);

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
      autoAnalyze: map['autoAnalyze'] as bool,
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      grades: map['grades'] == null ? null : pulumi.Input.decodeList<PredictionGrades>(map['grades'], (value) => PredictionGrades.fromMap((value as Map).cast<String, dynamic>())),
      hubName: map['hubName'] as String,
      involvedInteractionTypes: map['involvedInteractionTypes'] == null ? null : (map['involvedInteractionTypes'] as List).cast<String>(),
      involvedKpiTypes: map['involvedKpiTypes'] == null ? null : (map['involvedKpiTypes'] as List).cast<String>(),
      involvedRelationships: map['involvedRelationships'] == null ? null : (map['involvedRelationships'] as List).cast<String>(),
      mappings: PredictionMappings.fromMap((map['mappings'] as Map).cast<String, dynamic>()),
      negativeOutcomeExpression: map['negativeOutcomeExpression'] as String,
      positiveOutcomeExpression: map['positiveOutcomeExpression'] as String,
      predictionName: map['predictionName'] == null ? null : map['predictionName'] as String,
      primaryProfileType: map['primaryProfileType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeExpression: map['scopeExpression'] as String,
      scoreLabel: map['scoreLabel'] as String,
    );
  }
}

