// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponseContaineranalysisV1beta1 {
  final List<String> analysisType;

  /// Creates a new [AnalysisCompletedResponseContaineranalysisV1beta1].
  /// [analysisType] Required.
  AnalysisCompletedResponseContaineranalysisV1beta1({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'analysisType': analysisType};
  }

  factory AnalysisCompletedResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalysisCompletedResponseContaineranalysisV1beta1(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
