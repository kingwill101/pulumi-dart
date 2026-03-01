// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_template_experiment_report_configuration_outputs_s3_configuration.dart';

class ExperimentTemplateExperimentReportConfigurationOutputs {
  /// The data sources for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration?
  s3Configuration;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationOutputs].
  /// [s3Configuration] The data sources for the experiment report. See below.
  ExperimentTemplateExperimentReportConfigurationOutputs({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?s3Configuration == null
          ? null
          : s3Configuration!.toMap(),
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationOutputs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentTemplateExperimentReportConfigurationOutputs(
      s3Configuration: map['s3Configuration'] == null
          ? null
          : ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
