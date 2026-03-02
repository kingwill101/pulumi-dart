// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_action.dart';
import 'experiment_template_experiment_options.dart';
import 'experiment_template_experiment_report_configuration.dart';
import 'experiment_template_log_configuration.dart';
import 'experiment_template_stop_condition.dart';
import 'experiment_template_target.dart';

/// {@template pulumi_fis_experiment_template_experiment_template_args_doc}
/// The set of arguments for ExperimentTemplate.
/// {@endtemplate}
/// {@macro pulumi_fis_experiment_template_experiment_template_args_doc}
class ExperimentTemplateArgs {
  /// Action to be performed during an experiment. See below.
  final pulumi.Input<List<ExperimentTemplateAction>> actions;
  /// Description for the experiment template.
  final pulumi.Input<String> description;
  /// The experiment options for the experiment template. See experiment_options below for more details!
  final pulumi.Input<ExperimentTemplateExperimentOptions>? experimentOptions;
  /// The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfiguration>? experimentReportConfiguration;
  /// The configuration for experiment logging. See below.
  final pulumi.Input<ExperimentTemplateLogConfiguration>? logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  final pulumi.Input<String> roleArn;
  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ExperimentTemplateStopCondition>> stopConditions;
  /// Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Target of an action. See below.
  final pulumi.Input<List<ExperimentTemplateTarget>>? targets;

  /// Creates a new [ExperimentTemplateArgs].
  /// [actions] Action to be performed during an experiment. See below.
  /// [description] Description for the experiment template.
  /// [experimentOptions] The experiment options for the experiment template. See experiment_options below for more details!
  /// [experimentReportConfiguration] The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  /// [logConfiguration] The configuration for experiment logging. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  /// [stopConditions] When an ongoing experiment should be stopped. See below.
  /// [tags] Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targets] Target of an action. See below.
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
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<ExperimentTemplateAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ExperimentTemplateAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'experimentOptions': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentOptions, Map<String, dynamic>>(experimentOptions, (value) => value.toMap()),
      'experimentReportConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentReportConfiguration, Map<String, dynamic>>(experimentReportConfiguration, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'stopConditions': pulumi.Input.mapInputValue<List<ExperimentTemplateStopCondition>, List<Map<String, dynamic>>>(stopConditions, (value) => pulumi.Input.encodeList<ExperimentTemplateStopCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<ExperimentTemplateTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateArgs(
      actions: (pulumi.Input.decodeList<ExperimentTemplateAction>(map['actions']!, (value) => ExperimentTemplateAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      experimentOptions: map['experimentOptions'] == null ? null : ((ExperimentTemplateExperimentOptions.fromMap((map['experimentOptions']! as Map).cast<String, dynamic>())).input()).input(),
      experimentReportConfiguration: map['experimentReportConfiguration'] == null ? null : ((ExperimentTemplateExperimentReportConfiguration.fromMap((map['experimentReportConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      logConfiguration: map['logConfiguration'] == null ? null : ((ExperimentTemplateLogConfiguration.fromMap((map['logConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      stopConditions: (pulumi.Input.decodeList<ExperimentTemplateStopCondition>(map['stopConditions']!, (value) => ExperimentTemplateStopCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      targets: map['targets'] == null ? null : ((pulumi.Input.decodeList<ExperimentTemplateTarget>(map['targets']!, (value) => ExperimentTemplateTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

