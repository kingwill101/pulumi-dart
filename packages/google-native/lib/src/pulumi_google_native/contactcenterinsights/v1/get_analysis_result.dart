// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_analysis_result_response.dart';
import 'google_cloud_contactcenterinsights_v1_annotator_selector_response.dart';

/// Result data returned by getAnalysis.
class GetAnalysisResult {
  /// The result of the analysis, which is populated when the analysis finishes.
  final GoogleCloudContactcenterinsightsV1AnalysisResultResponse analysisResult;

  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse
      annotatorSelector;

  /// The time at which the analysis was created, which occurs when the long-running operation completes.
  final String createTime;

  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  final String name;

  /// The time at which the analysis was requested.
  final String requestTime;

  GetAnalysisResult({
    required this.analysisResult,
    required this.annotatorSelector,
    required this.createTime,
    required this.name,
    required this.requestTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisResult'] = analysisResult.toMap();
    map['annotatorSelector'] = annotatorSelector.toMap();
    map['createTime'] = createTime;
    map['name'] = name;
    map['requestTime'] = requestTime;
    return map;
  }

  factory GetAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetAnalysisResult(
      analysisResult:
          GoogleCloudContactcenterinsightsV1AnalysisResultResponse.fromMap(
              (map['analysisResult'] as Map).cast<String, dynamic>()),
      annotatorSelector:
          GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap(
              (map['annotatorSelector'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      requestTime: map['requestTime'] as String,
    );
  }
}
