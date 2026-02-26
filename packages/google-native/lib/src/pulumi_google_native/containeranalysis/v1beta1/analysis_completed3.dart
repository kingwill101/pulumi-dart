// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompleted3 {
  final List<String>? analysisType;

  AnalysisCompleted3({
    this.analysisType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisTypeValue = analysisType;
    if (analysisTypeValue != null) {
      map['analysisType'] = analysisTypeValue;
    }
    return map;
  }

  factory AnalysisCompleted3.fromMap(Map<String, dynamic> map) {
    return AnalysisCompleted3(
      analysisType: map['analysisType'] == null
          ? null
          : (map['analysisType'] as List).cast<String>(),
    );
  }
}
