// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_experiment_report_configuration_outputs_s3_configuration.dart';

class ExperimentTemplateExperimentReportConfigurationOutputs {
  /// Data sources for the experiment report. See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration?>? s3Configuration;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationOutputs].
  /// [s3Configuration] Data sources for the experiment report. See below.
  const ExperimentTemplateExperimentReportConfigurationOutputs({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationOutputs.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationOutputs(
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
