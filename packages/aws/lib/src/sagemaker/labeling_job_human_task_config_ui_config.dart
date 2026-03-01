// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobHumanTaskConfigUiConfig {
  /// ARN of the worker task template used to render the worker UI and tools for labeling job tasks.
  final String? humanTaskUiArn;

  /// S3 bucket location of the UI template, or worker task template.
  final String? uiTemplateS3Uri;

  /// Creates a new [LabelingJobHumanTaskConfigUiConfig].
  /// [humanTaskUiArn] ARN of the worker task template used to render the worker UI and tools for labeling job tasks.
  /// [uiTemplateS3Uri] S3 bucket location of the UI template, or worker task template.
  LabelingJobHumanTaskConfigUiConfig({
    this.humanTaskUiArn,
    this.uiTemplateS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanTaskUiArn': ?humanTaskUiArn,
      'uiTemplateS3Uri': ?uiTemplateS3Uri,
    };
  }

  factory LabelingJobHumanTaskConfigUiConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigUiConfig(
      humanTaskUiArn: map['humanTaskUiArn'] == null
          ? null
          : map['humanTaskUiArn'] as String,
      uiTemplateS3Uri: map['uiTemplateS3Uri'] == null
          ? null
          : map['uiTemplateS3Uri'] as String,
    );
  }
}
