// ignore_for_file: unused_element, unnecessary_cast

import '../experiment_template_experiment_report_configuration_outputs_s3_configuration/experiment_template_experiment_report_configuration_outputs_s3_configuration.dart';

class ExperimentTemplateExperimentReportConfigurationOutputs {
  /// The data sources for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration?
      s3Configuration;

  ExperimentTemplateExperimentReportConfigurationOutputs({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3ConfigurationValue = s3Configuration;
    if (s3ConfigurationValue != null) {
      map['s3Configuration'] = s3ConfigurationValue.toMap();
    }
    return map;
  }

  factory ExperimentTemplateExperimentReportConfigurationOutputs.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationOutputs(
      s3Configuration: map['s3Configuration'] == null
          ? null
          : ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration
              .fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}
