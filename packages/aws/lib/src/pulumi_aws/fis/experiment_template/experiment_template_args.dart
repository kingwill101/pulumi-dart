// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../experiment_template_action/experiment_template_action.dart';
import '../experiment_template_experiment_options/experiment_template_experiment_options.dart';
import '../experiment_template_experiment_report_configuration/experiment_template_experiment_report_configuration.dart';
import '../experiment_template_log_configuration/experiment_template_log_configuration.dart';
import '../experiment_template_stop_condition/experiment_template_stop_condition.dart';
import '../experiment_template_target/experiment_template_target.dart';

/// The set of arguments for ExperimentTemplate.
class ExperimentTemplateArgs {
  /// Action to be performed during an experiment. See below.
  final Input<List<ExperimentTemplateAction>> actions;

  /// Description for the experiment template.
  final Input<String> description;

  /// The experiment options for the experiment template. See experiment_options below for more details!
  final Input<ExperimentTemplateExperimentOptions>? experimentOptions;

  /// The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  final Input<ExperimentTemplateExperimentReportConfiguration>?
      experimentReportConfiguration;

  /// The configuration for experiment logging. See below.
  final Input<ExperimentTemplateLogConfiguration>? logConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  final Input<String> roleArn;

  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  final Input<List<ExperimentTemplateStopCondition>> stopConditions;

  /// Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Target of an action. See below.
  final Input<List<ExperimentTemplateTarget>>? targets;

  ExperimentTemplateArgs({
    required this.actions,
    required this.description,
    this.experimentOptions,
    this.experimentReportConfiguration,
    this.logConfiguration,
    this.region,
    required this.roleArn,
    required this.stopConditions,
    this.tags,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.mapInputValue<List<ExperimentTemplateAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) =>
            Input.encodeList<ExperimentTemplateAction, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['description'] = description;
    final experimentOptionsValue = experimentOptions;
    if (experimentOptionsValue != null) {
      map['experimentOptions'] = Input.mapOptionalInputValue<
              ExperimentTemplateExperimentOptions, Map<String, dynamic>>(
          experimentOptionsValue, (value) => value.toMap());
    }
    final experimentReportConfigurationValue = experimentReportConfiguration;
    if (experimentReportConfigurationValue != null) {
      map['experimentReportConfiguration'] = Input.mapOptionalInputValue<
              ExperimentTemplateExperimentReportConfiguration,
              Map<String, dynamic>>(
          experimentReportConfigurationValue, (value) => value.toMap());
    }
    final logConfigurationValue = logConfiguration;
    if (logConfigurationValue != null) {
      map['logConfiguration'] = Input.mapOptionalInputValue<
              ExperimentTemplateLogConfiguration, Map<String, dynamic>>(
          logConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['stopConditions'] = Input.mapInputValue<
            List<ExperimentTemplateStopCondition>, List<Map<String, dynamic>>>(
        stopConditions,
        (value) => Input.encodeList<ExperimentTemplateStopCondition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = Input.mapOptionalInputValue<
              List<ExperimentTemplateTarget>, List<Map<String, dynamic>>>(
          targetsValue,
          (value) =>
              Input.encodeList<ExperimentTemplateTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ExperimentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateArgs(
      actions: Input.asInput<List<ExperimentTemplateAction>>(map['actions']),
      description: Input.asInput<String>(map['description']),
      experimentOptions:
          Input.asOptionalInput<ExperimentTemplateExperimentOptions>(
              map['experimentOptions']),
      experimentReportConfiguration: Input.asOptionalInput<
              ExperimentTemplateExperimentReportConfiguration>(
          map['experimentReportConfiguration']),
      logConfiguration:
          Input.asOptionalInput<ExperimentTemplateLogConfiguration>(
              map['logConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      stopConditions: Input.asInput<List<ExperimentTemplateStopCondition>>(
          map['stopConditions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targets:
          Input.asOptionalInput<List<ExperimentTemplateTarget>>(map['targets']),
    );
  }
}
