// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponseContaineranalysisV1alpha1 {
  /// type of analysis that were completed on a resource.
  final List<String> analysisType;

  /// Creates a new [AnalysisCompletedResponseContaineranalysisV1alpha1].
  /// [analysisType] type of analysis that were completed on a resource.
  AnalysisCompletedResponseContaineranalysisV1alpha1({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'analysisType': analysisType};
  }

  factory AnalysisCompletedResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalysisCompletedResponseContaineranalysisV1alpha1(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
