// ignore_for_file: unused_element, unnecessary_cast

import '../experiment_template_experiment_report_configuration_data_sources/experiment_template_experiment_report_configuration_data_sources.dart';
import '../experiment_template_experiment_report_configuration_outputs/experiment_template_experiment_report_configuration_outputs.dart';

class ExperimentTemplateExperimentReportConfiguration {
  /// The data sources for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationDataSources? dataSources;

  /// The outputs for the experiment report. See below.
  final ExperimentTemplateExperimentReportConfigurationOutputs? outputs;

  /// The duration of the post-experiment period. Defaults to `PT20M`.
  final String? postExperimentDuration;

  /// The duration of the pre-experiment period. Defaults to `PT20M`.
  final String? preExperimentDuration;

  ExperimentTemplateExperimentReportConfiguration({
    this.dataSources,
    this.outputs,
    this.postExperimentDuration,
    this.preExperimentDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSourcesValue = dataSources;
    if (dataSourcesValue != null) {
      map['dataSources'] = dataSourcesValue.toMap();
    }
    final outputsValue = outputs;
    if (outputsValue != null) {
      map['outputs'] = outputsValue.toMap();
    }
    final postExperimentDurationValue = postExperimentDuration;
    if (postExperimentDurationValue != null) {
      map['postExperimentDuration'] = postExperimentDurationValue;
    }
    final preExperimentDurationValue = preExperimentDuration;
    if (preExperimentDurationValue != null) {
      map['preExperimentDuration'] = preExperimentDurationValue;
    }
    return map;
  }

  factory ExperimentTemplateExperimentReportConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfiguration(
      dataSources: map['dataSources'] == null
          ? null
          : ExperimentTemplateExperimentReportConfigurationDataSources.fromMap(
              (map['dataSources'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null
          ? null
          : ExperimentTemplateExperimentReportConfigurationOutputs.fromMap(
              (map['outputs'] as Map).cast<String, dynamic>()),
      postExperimentDuration: map['postExperimentDuration'] == null
          ? null
          : map['postExperimentDuration'] as String,
      preExperimentDuration: map['preExperimentDuration'] == null
          ? null
          : map['preExperimentDuration'] as String,
    );
  }
}
