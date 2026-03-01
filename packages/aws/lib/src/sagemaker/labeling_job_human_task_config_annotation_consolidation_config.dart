// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobHumanTaskConfigAnnotationConsolidationConfig {
  /// ARN of a Lambda function that implements the logic for annotation consolidation and to process output data.
  final String annotationConsolidationLambdaArn;

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

  factory LabelingJobHumanTaskConfigAnnotationConsolidationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return LabelingJobHumanTaskConfigAnnotationConsolidationConfig(
      annotationConsolidationLambdaArn:
          map['annotationConsolidationLambdaArn'] as String,
    );
  }
}
