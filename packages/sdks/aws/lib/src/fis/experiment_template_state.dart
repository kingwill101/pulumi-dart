// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_action.dart';
import 'experiment_template_experiment_options.dart';
import 'experiment_template_experiment_report_configuration.dart';
import 'experiment_template_log_configuration.dart';
import 'experiment_template_stop_condition.dart';
import 'experiment_template_target.dart';

/// Input properties used for looking up and filtering ExperimentTemplate resources.
class ExperimentTemplateState {
  /// Action to be performed during an experiment. See below.
  final pulumi.Input<List<ExperimentTemplateAction>>? actions;
  /// Description for the experiment template.
  final pulumi.Input<String>? description;
  /// The experiment options for the experiment template. See experiment_options below for more details!
  final pulumi.Input<ExperimentTemplateExperimentOptions>? experimentOptions;
  /// The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfiguration>? experimentReportConfiguration;
  /// The configuration for experiment logging. See below.
  final pulumi.Input<ExperimentTemplateLogConfiguration>? logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  final pulumi.Input<String>? roleArn;
  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ExperimentTemplateStopCondition>>? stopConditions;
  /// Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Target of an action. See below.
  final pulumi.Input<List<ExperimentTemplateTarget>>? targets;

  /// Creates a new [ExperimentTemplateState].
  /// [actions] Action to be performed during an experiment. See below.
  /// [description] Description for the experiment template.
  /// [experimentOptions] The experiment options for the experiment template. See experiment_options below for more details!
  /// [experimentReportConfiguration] The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  /// [logConfiguration] The configuration for experiment logging. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  /// [stopConditions] When an ongoing experiment should be stopped. See below.
  /// [tags] Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [targets] Target of an action. See below.
  ExperimentTemplateState({
    pulumi.Output<List<ExperimentTemplateAction>>? actions,
    pulumi.Output<String>? description,
    pulumi.Output<ExperimentTemplateExperimentOptions>? experimentOptions,
    pulumi.Output<ExperimentTemplateExperimentReportConfiguration>? experimentReportConfiguration,
    pulumi.Output<ExperimentTemplateLogConfiguration>? logConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<ExperimentTemplateStopCondition>>? stopConditions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ExperimentTemplateTarget>>? targets,
  }) :
      actions = pulumi.Input.asOptionalInput<List<ExperimentTemplateAction>>(actions),
      description = pulumi.Input.asOptionalInput<String>(description),
      experimentOptions = pulumi.Input.asOptionalInput<ExperimentTemplateExperimentOptions>(experimentOptions),
      experimentReportConfiguration = pulumi.Input.asOptionalInput<ExperimentTemplateExperimentReportConfiguration>(experimentReportConfiguration),
      logConfiguration = pulumi.Input.asOptionalInput<ExperimentTemplateLogConfiguration>(logConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      stopConditions = pulumi.Input.asOptionalInput<List<ExperimentTemplateStopCondition>>(stopConditions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targets = pulumi.Input.asOptionalInput<List<ExperimentTemplateTarget>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ExperimentTemplateAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'experimentOptions': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentOptions, Map<String, dynamic>>(experimentOptions, (value) => value.toMap()),
      'experimentReportConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateExperimentReportConfiguration, Map<String, dynamic>>(experimentReportConfiguration, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'stopConditions': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateStopCondition>, List<Map<String, dynamic>>>(stopConditions, (value) => pulumi.Input.encodeList<ExperimentTemplateStopCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<ExperimentTemplateTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentTemplateState.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<ExperimentTemplateAction>>(pulumi.Input.decodeList<ExperimentTemplateAction>(map['actions'], (value) => ExperimentTemplateAction.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      experimentOptions: map['experimentOptions'] == null ? null : pulumi.Output.create<ExperimentTemplateExperimentOptions>(ExperimentTemplateExperimentOptions.fromMap((map['experimentOptions'] as Map).cast<String, dynamic>())),
      experimentReportConfiguration: map['experimentReportConfiguration'] == null ? null : pulumi.Output.create<ExperimentTemplateExperimentReportConfiguration>(ExperimentTemplateExperimentReportConfiguration.fromMap((map['experimentReportConfiguration'] as Map).cast<String, dynamic>())),
      logConfiguration: map['logConfiguration'] == null ? null : pulumi.Output.create<ExperimentTemplateLogConfiguration>(ExperimentTemplateLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      stopConditions: map['stopConditions'] == null ? null : pulumi.Output.create<List<ExperimentTemplateStopCondition>>(pulumi.Input.decodeList<ExperimentTemplateStopCondition>(map['stopConditions'], (value) => ExperimentTemplateStopCondition.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<ExperimentTemplateTarget>>(pulumi.Input.decodeList<ExperimentTemplateTarget>(map['targets'], (value) => ExperimentTemplateTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

