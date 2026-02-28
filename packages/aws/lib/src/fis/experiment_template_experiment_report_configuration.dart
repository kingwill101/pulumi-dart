// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_template_experiment_report_configuration_data_sources.dart';
import 'experiment_template_experiment_report_configuration_outputs.dart';

class ExperimentTemplateExperimentReportConfiguration {
  /// The data sources for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationDataSources? dataSources;
  /// The outputs for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationOutputs? outputs;
  /// The duration of the post-experiment period. Defaults to `PT20M`.
  final String? postExperimentDuration;
  /// The duration of the pre-experiment period. Defaults to `PT20M`.
  final String? preExperimentDuration;

  /// Creates a new [ExperimentTemplateExperimentReportConfiguration].
  /// [dataSources] The data sources for the experiment report. See below.
  /// [outputs] The outputs for the experiment report. See below.
  /// [postExperimentDuration] The duration of the post-experiment period. Defaults to `PT20M`.
  /// [preExperimentDuration] The duration of the pre-experiment period. Defaults to `PT20M`.
  ExperimentTemplateExperimentReportConfiguration({
    this.dataSources,
    this.outputs,
    this.postExperimentDuration,
    this.preExperimentDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSources': ?dataSources == null ? null : dataSources!.toMap(),
      'outputs': ?outputs == null ? null : outputs!.toMap(),
      'postExperimentDuration': ?postExperimentDuration,
      'preExperimentDuration': ?preExperimentDuration,
    };
  }

  factory ExperimentTemplateExperimentReportConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfiguration(
      dataSources: map['dataSources'] == null ? null : ExperimentTemplateExperimentReportConfigurationDataSources.fromMap((map['dataSources'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : ExperimentTemplateExperimentReportConfigurationOutputs.fromMap((map['outputs'] as Map).cast<String, dynamic>()),
      postExperimentDuration: map['postExperimentDuration'] == null ? null : map['postExperimentDuration'] as String,
      preExperimentDuration: map['preExperimentDuration'] == null ? null : map['preExperimentDuration'] as String,
    );
  }
}

