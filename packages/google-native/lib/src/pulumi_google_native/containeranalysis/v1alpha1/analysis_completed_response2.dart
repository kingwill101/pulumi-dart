// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponse2 {
  /// type of analysis that were completed on a resource.
  final List<String> analysisType;

  AnalysisCompletedResponse2({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisType'] = analysisType;
    return map;
  }

  factory AnalysisCompletedResponse2.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedResponse2(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
