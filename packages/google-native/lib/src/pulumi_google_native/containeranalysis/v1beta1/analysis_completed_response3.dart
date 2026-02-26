// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponse3 {
  final List<String> analysisType;

  AnalysisCompletedResponse3({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisType'] = analysisType;
    return map;
  }

  factory AnalysisCompletedResponse3.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedResponse3(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
