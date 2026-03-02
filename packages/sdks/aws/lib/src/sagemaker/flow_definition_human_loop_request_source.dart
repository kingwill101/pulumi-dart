// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDefinitionHumanLoopRequestSource {
  /// Specifies whether Amazon Rekognition or Amazon Textract are used as the integration source. Valid values are: `AWS/Rekognition/DetectModerationLabels/Image/V3` and `AWS/Textract/AnalyzeDocument/Forms/V1`.
  final pulumi.Input<String> awsManagedHumanLoopRequestSource;

  /// Creates a new [FlowDefinitionHumanLoopRequestSource].
  /// [awsManagedHumanLoopRequestSource] Specifies whether Amazon Rekognition or Amazon Textract are used as the integration source. Valid values are: `AWS/Rekognition/DetectModerationLabels/Image/V3` and `AWS/Textract/AnalyzeDocument/Forms/V1`.
  FlowDefinitionHumanLoopRequestSource({
    required this.awsManagedHumanLoopRequestSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsManagedHumanLoopRequestSource': awsManagedHumanLoopRequestSource,
    };
  }

  factory FlowDefinitionHumanLoopRequestSource.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopRequestSource(
      awsManagedHumanLoopRequestSource: (map['awsManagedHumanLoopRequestSource'] as String).input(),
    );
  }
}

