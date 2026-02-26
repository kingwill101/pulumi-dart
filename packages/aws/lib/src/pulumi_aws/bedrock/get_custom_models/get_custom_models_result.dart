// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_custom_models_model_summary/get_custom_models_model_summary.dart';

/// Result data returned by getCustomModels.
class GetCustomModelsResult {
  final String id;

  /// Model summaries.
  final List<GetCustomModelsModelSummary> modelSummaries;
  final String region;

  GetCustomModelsResult({
    required this.id,
    required this.modelSummaries,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['modelSummaries'] =
        Input.encodeList<GetCustomModelsModelSummary, Map<String, dynamic>>(
            modelSummaries, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetCustomModelsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsResult(
      id: map['id'] as String,
      modelSummaries: Input.decodeList<GetCustomModelsModelSummary>(
          map['modelSummaries'],
          (value) => GetCustomModelsModelSummary.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
