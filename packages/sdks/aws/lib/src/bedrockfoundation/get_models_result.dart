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
  final String? id;
  /// List of model summary objects. See `modelSummaries`.
  final List<GetModelsModelSummary>? modelSummaries;
  final String? region;

  /// Creates a new [GetModelsResult].
  /// [byCustomizationType] Optional.
  /// [byInferenceType] Optional.
  /// [byOutputModality] Optional.
  /// [byProvider] Optional.
  /// [id] AWS region.
  /// [modelSummaries] List of model summary objects. See `modelSummaries`.
  /// [region] Optional.
  const GetModelsResult({
    this.byCustomizationType,
    this.byInferenceType,
    this.byOutputModality,
    this.byProvider,
    this.id,
    this.modelSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byCustomizationType': ?byCustomizationType,
      'byInferenceType': ?byInferenceType,
      'byOutputModality': ?byOutputModality,
      'byProvider': ?byProvider,
      'id': ?id,
      'modelSummaries': ?(() { final guardedValue = modelSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetModelsModelSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetModelsResult.fromMap(Map<String, dynamic> map) {
    return GetModelsResult(
      byCustomizationType: (() { final guardedValue = map['byCustomizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      byInferenceType: (() { final guardedValue = map['byInferenceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      byOutputModality: (() { final guardedValue = map['byOutputModality']; if (guardedValue == null) return null; return guardedValue as String; })(),
      byProvider: (() { final guardedValue = map['byProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelSummaries: (() { final guardedValue = map['modelSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetModelsModelSummary>(guardedValue, (value) => GetModelsModelSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
