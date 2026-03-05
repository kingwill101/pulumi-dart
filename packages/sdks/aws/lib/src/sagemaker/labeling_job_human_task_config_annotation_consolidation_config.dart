// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobHumanTaskConfigAnnotationConsolidationConfig {
  /// ARN of a Lambda function that implements the logic for annotation consolidation and to process output data.
  final pulumi.Input<String> annotationConsolidationLambdaArn;

  /// Creates a new [LabelingJobHumanTaskConfigAnnotationConsolidationConfig].
  /// [annotationConsolidationLambdaArn] ARN of a Lambda function that implements the logic for annotation consolidation and to process output data.
  LabelingJobHumanTaskConfigAnnotationConsolidationConfig({
    required this.annotationConsolidationLambdaArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationConsolidationLambdaArn': annotationConsolidationLambdaArn,
    };
  }

  factory LabelingJobHumanTaskConfigAnnotationConsolidationConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigAnnotationConsolidationConfig(
      annotationConsolidationLambdaArn: pulumi.Input.fromValue(map['annotationConsolidationLambdaArn'] as String),
    );
  }
}

