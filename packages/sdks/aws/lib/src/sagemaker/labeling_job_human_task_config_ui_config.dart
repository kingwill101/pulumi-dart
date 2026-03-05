// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobHumanTaskConfigUiConfig {
  /// ARN of the worker task template used to render the worker UI and tools for labeling job tasks.
  final pulumi.Input<String>? humanTaskUiArn;
  /// S3 bucket location of the UI template, or worker task template.
  final pulumi.Input<String>? uiTemplateS3Uri;

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
      humanTaskUiArn: (() { final guardedValue = map['humanTaskUiArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiTemplateS3Uri: (() { final guardedValue = map['uiTemplateS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

