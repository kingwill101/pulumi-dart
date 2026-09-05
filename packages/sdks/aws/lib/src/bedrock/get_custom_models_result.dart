// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_models_model_summary.dart';

/// Result data returned by getCustomModels.
class GetCustomModelsResult {
  final String? id;
  /// Model summaries.
  final List<GetCustomModelsModelSummary>? modelSummaries;
  final String? region;

  /// Creates a new [GetCustomModelsResult].
  /// [id] Optional.
  /// [modelSummaries] Model summaries.
  /// [region] Optional.
  const GetCustomModelsResult({
    this.id,
    this.modelSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'modelSummaries': ?(() { final guardedValue = modelSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelsModelSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetCustomModelsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelSummaries: (() { final guardedValue = map['modelSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelsModelSummary>(guardedValue, (value) => GetCustomModelsModelSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
