// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedContaineranalysisV1alpha1 {
  /// type of analysis that were completed on a resource.
  final List<String>? analysisType;

  /// Creates a new [AnalysisCompletedContaineranalysisV1alpha1].
  /// [analysisType] type of analysis that were completed on a resource.
  AnalysisCompletedContaineranalysisV1alpha1({
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

  factory AnalysisCompletedContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AnalysisCompletedContaineranalysisV1alpha1(
      analysisType: map['analysisType'] == null
          ? null
          : (map['analysisType'] as List).cast<String>(),
    );
  }
}
