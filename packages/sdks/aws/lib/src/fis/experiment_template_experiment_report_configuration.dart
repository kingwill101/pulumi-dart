// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_experiment_report_configuration_data_sources.dart';
import 'experiment_template_experiment_report_configuration_outputs.dart';

class ExperimentTemplateExperimentReportConfiguration {
  /// The data sources for the experiment report. See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfigurationDataSources>? dataSources;
  /// The outputs for the experiment report. See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfigurationOutputs>? outputs;
  /// The duration of the post-experiment period. Defaults to `PT20M`.
  final pulumi.Input<String>? postExperimentDuration;
  /// The duration of the pre-experiment period. Defaults to `PT20M`.
  final pulumi.Input<String>? preExperimentDuration;

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
      'dataSources': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentReportConfigurationDataSources, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentReportConfigurationOutputs, Map<String, dynamic>>(outputs, (value) => value.toMap()),
      'postExperimentDuration': ?postExperimentDuration,
      'preExperimentDuration': ?preExperimentDuration,
    };
  }

  factory ExperimentTemplateExperimentReportConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfiguration(
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateExperimentReportConfigurationDataSources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateExperimentReportConfigurationOutputs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postExperimentDuration: (() { final guardedValue = map['postExperimentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preExperimentDuration: (() { final guardedValue = map['preExperimentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

