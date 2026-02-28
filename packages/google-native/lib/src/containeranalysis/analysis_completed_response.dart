// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponse {
  final List<String> analysisType;

  /// Creates a new [AnalysisCompletedResponse].
  /// [analysisType] Required.
  AnalysisCompletedResponse({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisType'] = analysisType;
    return map;
  }

  factory AnalysisCompletedResponse.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedResponse(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
