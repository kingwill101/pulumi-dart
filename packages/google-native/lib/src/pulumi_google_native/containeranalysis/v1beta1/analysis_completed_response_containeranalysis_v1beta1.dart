// ignore_for_file: unused_element, unnecessary_cast

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponseContaineranalysisV1beta1 {
  final List<String> analysisType;

  AnalysisCompletedResponseContaineranalysisV1beta1({
    required this.analysisType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisType'] = analysisType;
    return map;
  }

  factory AnalysisCompletedResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AnalysisCompletedResponseContaineranalysisV1beta1(
      analysisType: (map['analysisType'] as List).cast<String>(),
    );
  }
}
