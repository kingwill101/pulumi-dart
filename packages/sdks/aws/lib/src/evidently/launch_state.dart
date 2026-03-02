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
    this.arn,
    this.createdTime,
    this.description,
    this.executions,
    this.groups,
    this.lastUpdatedTime,
    this.metricMonitors,
    this.name,
    this.project,
    this.randomizationSalt,
    this.region,
    this.scheduledSplitsConfig,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.type,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdTime: map['createdTime'] == null ? null : ((map['createdTime'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      executions: map['executions'] == null ? null : ((pulumi.Input.decodeList<LaunchExecution>(map['executions']!, (value) => LaunchExecution.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      groups: map['groups'] == null ? null : ((pulumi.Input.decodeList<LaunchGroup>(map['groups']!, (value) => LaunchGroup.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : ((map['lastUpdatedTime'] as String).input()).input(),
      metricMonitors: map['metricMonitors'] == null ? null : ((pulumi.Input.decodeList<LaunchMetricMonitor>(map['metricMonitors']!, (value) => LaunchMetricMonitor.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      project: map['project'] == null ? null : ((map['project'] as String).input()).input(),
      randomizationSalt: map['randomizationSalt'] == null ? null : ((map['randomizationSalt'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scheduledSplitsConfig: map['scheduledSplitsConfig'] == null ? null : ((LaunchScheduledSplitsConfig.fromMap((map['scheduledSplitsConfig']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusReason: map['statusReason'] == null ? null : ((map['statusReason'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

