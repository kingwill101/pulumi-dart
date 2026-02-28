// ignore_for_file: unused_element, unnecessary_cast


/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedContaineranalysisV1beta1 {
  final List<String>? analysisType;

  /// Creates a new [AnalysisCompletedContaineranalysisV1beta1].
  /// [analysisType] Optional.
  AnalysisCompletedContaineranalysisV1beta1({
    this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisType': ?analysisType,
    };
  }

  factory AnalysisCompletedContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedContaineranalysisV1beta1(
      analysisType: map['analysisType'] == null ? null : (map['analysisType'] as List).cast<String>(),
    );
  }
}

