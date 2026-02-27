import 'package:pulumi/pulumi.dart' as pulumi;
import '../launch_execution/launch_execution.dart';
import '../launch_group/launch_group.dart';
import '../launch_metric_monitor/launch_metric_monitor.dart';
import '../launch_scheduled_splits_config/launch_scheduled_splits_config.dart';
import 'launch_args.dart';

/// Provides a CloudWatch Evidently Launch resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With description
///
///
///
/// ### With multiple groups
///
///
///
/// ### With metric_monitors
///
///
///
/// ### With randomization_salt
///
///
///
/// ### With multiple steps
///
///
///
/// ### With segment overrides
///
///
///
/// ## Import
///
/// Import using the `name` of the launch and `arn` of the project separated by a `:`:
///
///
/// **Using `pulumi import` to import** CloudWatch Evidently Launch using the `name` of the launch and `name` of the project or `arn` of the hosting CloudWatch Evidently Project separated by a `:`. For example:
///
/// Import using the `name` of the launch and `name` of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:exampleProjectName
/// ```
///
/// Import using the `name` of the launch and `arn` of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:arn:aws:evidently:us-east-1:123456789012:project/exampleProjectName
/// ```
class Launch extends pulumi.CustomResource {
  /// The ARN of the launch.
  late final pulumi.Output<String> arn;

  /// The date and time that the launch is created.
  late final pulumi.Output<String> createdTime;

  /// Specifies the description of the launch.
  late final pulumi.Output<String?> description;

  /// A block that contains information about the start and end times of the launch. Detailed below
  late final pulumi.Output<List<LaunchExecution>> executions;

  /// One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  late final pulumi.Output<List<LaunchGroup>> groups;

  /// The date and time that the launch was most recently updated.
  late final pulumi.Output<String> lastUpdatedTime;

  /// One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  late final pulumi.Output<List<LaunchMetricMonitor>?> metricMonitors;

  /// The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  late final pulumi.Output<String> name;

  /// The name or ARN of the project that is to contain the new launch.
  late final pulumi.Output<String> project;

  /// When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  late final pulumi.Output<String?> randomizationSalt;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  late final pulumi.Output<LaunchScheduledSplitsConfig?> scheduledSplitsConfig;

  /// The current state of the launch. Valid values are `CREATED`, `UPDATING`, `RUNNING`, `COMPLETED`, and `CANCELLED`.
  late final pulumi.Output<String> status;

  /// If the launch was stopped, this is the string that was entered by the person who stopped the launch, to explain why it was stopped.
  late final pulumi.Output<String> statusReason;

  /// Tags to apply to the launch. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of launch.
  late final pulumi.Output<String> type;

  Launch(
    String name, {
    LaunchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/launch:Launch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.executions = registerOutput<List<LaunchExecution>>('executions');
    this.groups = registerOutput<List<LaunchGroup>>('groups');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.metricMonitors =
        registerOutput<List<LaunchMetricMonitor>?>('metricMonitors');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.randomizationSalt = registerOutput<String?>('randomizationSalt');
    this.region = registerOutput<String>('region');
    this.scheduledSplitsConfig =
        registerOutput<LaunchScheduledSplitsConfig?>('scheduledSplitsConfig');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
