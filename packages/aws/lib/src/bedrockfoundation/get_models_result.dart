// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_models_model_summary.dart';

/// Result data returned by getModels.
class GetModelsResult {
  final String? byCustomizationType;
  final String? byInferenceType;
  final String? byOutputModality;
  final String? byProvider;

  /// AWS region.
  final String id;

  /// List of model summary objects. See `model_summaries`.
  final List<GetModelsModelSummary> modelSummaries;
  final String region;

  /// Creates a new [GetModelsResult].
  /// [byCustomizationType] Optional.
  /// [byInferenceType] Optional.
  /// [byOutputModality] Optional.
  /// [byProvider] Optional.
  /// [id] AWS region.
  /// [modelSummaries] List of model summary objects. See `model_summaries`.
  /// [region] Required.
  GetModelsResult({
    this.byCustomizationType,
    this.byInferenceType,
    this.byOutputModality,
    this.byProvider,
    required this.id,
    required this.modelSummaries,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byCustomizationTypeValue = byCustomizationType;
    if (byCustomizationTypeValue != null) {
      map['byCustomizationType'] = byCustomizationTypeValue;
    }
    final byInferenceTypeValue = byInferenceType;
    if (byInferenceTypeValue != null) {
      map['byInferenceType'] = byInferenceTypeValue;
    }
    final byOutputModalityValue = byOutputModality;
    if (byOutputModalityValue != null) {
      map['byOutputModality'] = byOutputModalityValue;
    }
    final byProviderValue = byProvider;
    if (byProviderValue != null) {
      map['byProvider'] = byProviderValue;
    }
    map['id'] = id;
    map['modelSummaries'] =
        pulumi.Input.encodeList<GetModelsModelSummary, Map<String, dynamic>>(
            modelSummaries, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetModelsResult.fromMap(Map<String, dynamic> map) {
    return GetModelsResult(
      byCustomizationType: map['byCustomizationType'] == null
          ? null
          : map['byCustomizationType'] as String,
      byInferenceType: map['byInferenceType'] == null
          ? null
          : map['byInferenceType'] as String,
      byOutputModality: map['byOutputModality'] == null
          ? null
          : map['byOutputModality'] as String,
      byProvider:
          map['byProvider'] == null ? null : map['byProvider'] as String,
      id: map['id'] as String,
      modelSummaries: pulumi.Input.decodeList<GetModelsModelSummary>(
          map['modelSummaries'],
          (value) => GetModelsModelSummary.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
