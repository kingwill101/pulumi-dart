// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../launch_group/launch_group.dart';
import '../launch_metric_monitor/launch_metric_monitor.dart';
import '../launch_scheduled_splits_config/launch_scheduled_splits_config.dart';

/// The set of arguments for Launch.
class LaunchArgs {
  /// Specifies the description of the launch.
  final pulumi.Input<String>? description;

  /// One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  final pulumi.Input<List<LaunchGroup>> groups;

  /// One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  final pulumi.Input<List<LaunchMetricMonitor>>? metricMonitors;

  /// The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  final pulumi.Input<String>? name;

  /// The name or ARN of the project that is to contain the new launch.
  final pulumi.Input<String> project;

  /// When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  final pulumi.Input<String>? randomizationSalt;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  final pulumi.Input<LaunchScheduledSplitsConfig>? scheduledSplitsConfig;

  /// Tags to apply to the launch. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  LaunchArgs({
    this.description,
    required this.groups,
    this.metricMonitors,
    this.name,
    required this.project,
    this.randomizationSalt,
    this.region,
    this.scheduledSplitsConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['groups'] = pulumi.Input.mapInputValue<List<LaunchGroup>,
            List<Map<String, dynamic>>>(
        groups,
        (value) => pulumi.Input.encodeList<LaunchGroup, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final metricMonitorsValue = metricMonitors;
    if (metricMonitorsValue != null) {
      map['metricMonitors'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchMetricMonitor>, List<Map<String, dynamic>>>(
          metricMonitorsValue,
          (value) => pulumi.Input.encodeList<LaunchMetricMonitor,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['project'] = project;
    final randomizationSaltValue = randomizationSalt;
    if (randomizationSaltValue != null) {
      map['randomizationSalt'] = randomizationSaltValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduledSplitsConfigValue = scheduledSplitsConfig;
    if (scheduledSplitsConfigValue != null) {
      map['scheduledSplitsConfig'] = pulumi.Input.mapOptionalInputValue<
              LaunchScheduledSplitsConfig, Map<String, dynamic>>(
          scheduledSplitsConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LaunchArgs.fromMap(Map<String, dynamic> map) {
    return LaunchArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      groups: pulumi.Input.asInput<List<LaunchGroup>>(map['groups']),
      metricMonitors: pulumi.Input.asOptionalInput<List<LaunchMetricMonitor>>(
          map['metricMonitors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asInput<String>(map['project']),
      randomizationSalt:
          pulumi.Input.asOptionalInput<String>(map['randomizationSalt']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduledSplitsConfig:
          pulumi.Input.asOptionalInput<LaunchScheduledSplitsConfig>(
              map['scheduledSplitsConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
