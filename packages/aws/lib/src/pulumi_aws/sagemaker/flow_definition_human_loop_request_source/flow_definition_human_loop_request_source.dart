// ignore_for_file: unused_element, unnecessary_cast

class FlowDefinitionHumanLoopRequestSource {
  /// Specifies whether Amazon Rekognition or Amazon Textract are used as the integration source. Valid values are: `AWS/Rekognition/DetectModerationLabels/Image/V3` and `AWS/Textract/AnalyzeDocument/Forms/V1`.
  final String awsManagedHumanLoopRequestSource;

  FlowDefinitionHumanLoopRequestSource({
    required this.awsManagedHumanLoopRequestSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsManagedHumanLoopRequestSource'] = awsManagedHumanLoopRequestSource;
    return map;
  }

  factory FlowDefinitionHumanLoopRequestSource.fromMap(
      Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopRequestSource(
      awsManagedHumanLoopRequestSource:
          map['awsManagedHumanLoopRequestSource'] as String,
    );
  }
}
