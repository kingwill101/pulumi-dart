// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_execution.dart';
import 'launch_group.dart';
import 'launch_metric_monitor.dart';
import 'launch_scheduled_splits_config.dart';

/// Input properties used for looking up and filtering Launch resources.
class LaunchState {
  /// The ARN of the launch.
  final pulumi.Input<String>? arn;
  /// The date and time that the launch is created.
  final pulumi.Input<String>? createdTime;
  /// Specifies the description of the launch.
  final pulumi.Input<String>? description;
  /// A block that contains information about the start and end times of the launch. Detailed below
  final pulumi.Input<List<LaunchExecution>>? executions;
  /// One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  final pulumi.Input<List<LaunchGroup>>? groups;
  /// The date and time that the launch was most recently updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  final pulumi.Input<List<LaunchMetricMonitor>>? metricMonitors;
  /// The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  final pulumi.Input<String>? name;
  /// The name or ARN of the project that is to contain the new launch.
  final pulumi.Input<String>? project;
  /// When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  final pulumi.Input<String>? randomizationSalt;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  final pulumi.Input<LaunchScheduledSplitsConfig>? scheduledSplitsConfig;
  /// The current state of the launch. Valid values are `CREATED`, `UPDATING`, `RUNNING`, `COMPLETED`, and `CANCELLED`.
  final pulumi.Input<String>? status;
  /// If the launch was stopped, this is the string that was entered by the person who stopped the launch, to explain why it was stopped.
  final pulumi.Input<String>? statusReason;
  /// Tags to apply to the launch. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of launch.
  final pulumi.Input<String>? type;

  /// Creates a new [LaunchState].
  /// [arn] The ARN of the launch.
  /// [createdTime] The date and time that the launch is created.
  /// [description] Specifies the description of the launch.
  /// [executions] A block that contains information about the start and end times of the launch. Detailed below
  /// [groups] One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  /// [lastUpdatedTime] The date and time that the launch was most recently updated.
  /// [metricMonitors] One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  /// [name] The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  /// [project] The name or ARN of the project that is to contain the new launch.
  /// [randomizationSalt] When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduledSplitsConfig] A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  /// [status] The current state of the launch. Valid values are `CREATED`, `UPDATING`, `RUNNING`, `COMPLETED`, and `CANCELLED`.
  /// [statusReason] If the launch was stopped, this is the string that was entered by the person who stopped the launch, to explain why it was stopped.
  /// [tags] Tags to apply to the launch. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of launch.
  LaunchState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<LaunchExecution>>? executions,
    pulumi.Output<List<LaunchGroup>>? groups,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<List<LaunchMetricMonitor>>? metricMonitors,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? randomizationSalt,
    pulumi.Output<String>? region,
    pulumi.Output<LaunchScheduledSplitsConfig>? scheduledSplitsConfig,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      executions = pulumi.Input.asOptionalInput<List<LaunchExecution>>(executions),
      groups = pulumi.Input.asOptionalInput<List<LaunchGroup>>(groups),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      metricMonitors = pulumi.Input.asOptionalInput<List<LaunchMetricMonitor>>(metricMonitors),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      randomizationSalt = pulumi.Input.asOptionalInput<String>(randomizationSalt),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduledSplitsConfig = pulumi.Input.asOptionalInput<LaunchScheduledSplitsConfig>(scheduledSplitsConfig),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'executions': ?pulumi.Input.mapOptionalInputValue<List<LaunchExecution>, List<Map<String, dynamic>>>(executions, (value) => pulumi.Input.encodeList<LaunchExecution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groups': ?pulumi.Input.mapOptionalInputValue<List<LaunchGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<LaunchGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedTime': ?lastUpdatedTime,
      'metricMonitors': ?pulumi.Input.mapOptionalInputValue<List<LaunchMetricMonitor>, List<Map<String, dynamic>>>(metricMonitors, (value) => pulumi.Input.encodeList<LaunchMetricMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'randomizationSalt': ?randomizationSalt,
      'region': ?region,
      'scheduledSplitsConfig': ?pulumi.Input.mapOptionalInputValue<LaunchScheduledSplitsConfig, Map<String, dynamic>>(scheduledSplitsConfig, (value) => value.toMap()),
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory LaunchState.fromMap(Map<String, dynamic> map) {
    return LaunchState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executions: map['executions'] == null ? null : pulumi.Output.create<List<LaunchExecution>>(pulumi.Input.decodeList<LaunchExecution>(map['executions'], (value) => LaunchExecution.fromMap((value as Map).cast<String, dynamic>()))),
      groups: map['groups'] == null ? null : pulumi.Output.create<List<LaunchGroup>>(pulumi.Input.decodeList<LaunchGroup>(map['groups'], (value) => LaunchGroup.fromMap((value as Map).cast<String, dynamic>()))),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      metricMonitors: map['metricMonitors'] == null ? null : pulumi.Output.create<List<LaunchMetricMonitor>>(pulumi.Input.decodeList<LaunchMetricMonitor>(map['metricMonitors'], (value) => LaunchMetricMonitor.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      randomizationSalt: map['randomizationSalt'] == null ? null : pulumi.Output.create<String>(map['randomizationSalt'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduledSplitsConfig: map['scheduledSplitsConfig'] == null ? null : pulumi.Output.create<LaunchScheduledSplitsConfig>(LaunchScheduledSplitsConfig.fromMap((map['scheduledSplitsConfig'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

