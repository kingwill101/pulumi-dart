// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobHumanTaskConfigUiConfig {
  /// ARN of the worker task template used to render the worker UI and tools for labeling job tasks.
  final String? humanTaskUiArn;

  /// S3 bucket location of the UI template, or worker task template.
  final String? uiTemplateS3Uri;

  LabelingJobHumanTaskConfigUiConfig({
    this.humanTaskUiArn,
    this.uiTemplateS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final humanTaskUiArnValue = humanTaskUiArn;
    if (humanTaskUiArnValue != null) {
      map['humanTaskUiArn'] = humanTaskUiArnValue;
    }
    final uiTemplateS3UriValue = uiTemplateS3Uri;
    if (uiTemplateS3UriValue != null) {
      map['uiTemplateS3Uri'] = uiTemplateS3UriValue;
    }
    return map;
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
