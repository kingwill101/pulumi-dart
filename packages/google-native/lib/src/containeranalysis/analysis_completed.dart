// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompleted {
  final List<String>? analysisType;

  /// Creates a new [AnalysisCompleted].
  /// [analysisType] Optional.
  AnalysisCompleted({
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

  factory AnalysisCompleted.fromMap(Map<String, dynamic> map) {
    return AnalysisCompleted(
      analysisType: map['analysisType'] == null
          ? null
          : (map['analysisType'] as List).cast<String>(),
    );
  }
}
