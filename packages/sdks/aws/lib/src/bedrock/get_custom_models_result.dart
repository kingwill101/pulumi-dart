// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_models_model_summary.dart';

/// Result data returned by getCustomModels.
class GetCustomModelsResult {
  final String id;
  /// Model summaries.
  final List<GetCustomModelsModelSummary> modelSummaries;
  final String region;

  /// Creates a new [GetCustomModelsResult].
  /// [id] Required.
  /// [modelSummaries] Model summaries.
  /// [region] Required.
  GetCustomModelsResult({
    required this.id,
    required this.modelSummaries,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'modelSummaries': pulumi.Input.encodeList<GetCustomModelsModelSummary, Map<String, dynamic>>(modelSummaries, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetCustomModelsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsResult(
      id: map['id'] as String,
      modelSummaries: pulumi.Input.decodeList<GetCustomModelsModelSummary>(map['modelSummaries'], (value) => GetCustomModelsModelSummary.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

