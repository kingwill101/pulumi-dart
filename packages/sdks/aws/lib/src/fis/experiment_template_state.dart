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
  /// Experiment options for the experiment template. See experimentOptions below for more details!
  final pulumi.Input<ExperimentTemplateExperimentOptions>? experimentOptions;
  /// Configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  final pulumi.Input<ExperimentTemplateExperimentReportConfiguration>? experimentReportConfiguration;
  /// Configuration for experiment logging. See below.
  final pulumi.Input<ExperimentTemplateLogConfiguration>? logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  final pulumi.Input<String>? roleArn;
  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ExperimentTemplateStopCondition>>? stopConditions;
  /// Key-value mapping of tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Target of an action. See below.
  final pulumi.Input<List<ExperimentTemplateTarget>>? targets;

  /// Creates a new [ExperimentTemplateState].
  /// [actions] Action to be performed during an experiment. See below.
  /// [description] Description for the experiment template.
  /// [experimentOptions] Experiment options for the experiment template. See experimentOptions below for more details!
  /// [experimentReportConfiguration] Configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  /// [logConfiguration] Configuration for experiment logging. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  /// [stopConditions] When an ongoing experiment should be stopped. See below.
  /// [tags] Key-value mapping of tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [targets] Target of an action. See below.
  const ExperimentTemplateState({
    this.actions,
    this.description,
    this.experimentOptions,
    this.experimentReportConfiguration,
    this.logConfiguration,
    this.region,
    this.roleArn,
    this.stopConditions,
    this.tags,
    this.tagsAll,
    this.targets,
  });

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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateAction>(guardedValue, (value) => ExperimentTemplateAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentOptions: (() { final guardedValue = map['experimentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateExperimentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      experimentReportConfiguration: (() { final guardedValue = map['experimentReportConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateExperimentReportConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stopConditions: (() { final guardedValue = map['stopConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateStopCondition>(guardedValue, (value) => ExperimentTemplateStopCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateTarget>(guardedValue, (value) => ExperimentTemplateTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
