import 'package:pulumi/pulumi.dart' as pulumi;
import '../experiment_template_action/experiment_template_action.dart';
import '../experiment_template_experiment_options/experiment_template_experiment_options.dart';
import '../experiment_template_experiment_report_configuration/experiment_template_experiment_report_configuration.dart';
import '../experiment_template_log_configuration/experiment_template_log_configuration.dart';
import '../experiment_template_stop_condition/experiment_template_stop_condition.dart';
import '../experiment_template_target/experiment_template_target.dart';
import 'experiment_template_args.dart';

/// Provides an FIS Experiment Template, which can be used to run an experiment.
/// An experiment template contains one or more actions to run on specified targets during an experiment.
/// It also contains the stop conditions that prevent the experiment from going out of bounds.
/// See [Amazon Fault Injection Simulator](https://docs.aws.amazon.com/fis/index.html)
/// for more information.
///
/// ## Example Usage
///
///
///
///
/// ### With Report Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FIS Experiment Templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fis/experimentTemplate:ExperimentTemplate template EXT123AbCdEfGhIjK
/// ```
class ExperimentTemplate extends pulumi.CustomResource {
  /// Action to be performed during an experiment. See below.
  late final pulumi.Output<List<ExperimentTemplateAction>> actions;

  /// Description for the experiment template.
  late final pulumi.Output<String> description;

  /// The experiment options for the experiment template. See experiment_options below for more details!
  late final pulumi.Output<ExperimentTemplateExperimentOptions>
      experimentOptions;

  /// The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  late final pulumi.Output<ExperimentTemplateExperimentReportConfiguration?>
      experimentReportConfiguration;

  /// The configuration for experiment logging. See below.
  late final pulumi.Output<ExperimentTemplateLogConfiguration?>
      logConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  late final pulumi.Output<String> roleArn;

  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<ExperimentTemplateStopCondition>>
      stopConditions;

  /// Key-value mapping of tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Target of an action. See below.
  late final pulumi.Output<List<ExperimentTemplateTarget>?> targets;

  ExperimentTemplate(
    String name, {
    ExperimentTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/experimentTemplate:ExperimentTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<ExperimentTemplateAction>>('actions');
    this.description = registerOutput<String>('description');
    this.experimentOptions =
        registerOutput<ExperimentTemplateExperimentOptions>(
            'experimentOptions');
    this.experimentReportConfiguration =
        registerOutput<ExperimentTemplateExperimentReportConfiguration?>(
            'experimentReportConfiguration');
    this.logConfiguration =
        registerOutput<ExperimentTemplateLogConfiguration?>('logConfiguration');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.stopConditions =
        registerOutput<List<ExperimentTemplateStopCondition>>('stopConditions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<ExperimentTemplateTarget>?>('targets');
  }
}
