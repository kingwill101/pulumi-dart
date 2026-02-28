// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_group.dart';
import 'launch_metric_monitor.dart';
import 'launch_scheduled_splits_config.dart';

/// {@template pulumi_evidently_launch_launch_args_doc}
/// The set of arguments for Launch.
/// {@endtemplate}
/// {@macro pulumi_evidently_launch_launch_args_doc}
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

  /// Creates a new [LaunchArgs].
  /// [description] Specifies the description of the launch.
  /// [groups] One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  /// [metricMonitors] One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  /// [name] The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  /// [project] The name or ARN of the project that is to contain the new launch.
  /// [randomizationSalt] When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduledSplitsConfig] A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  /// [tags] Tags to apply to the launch. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LaunchArgs({
    String? description,
    required List<LaunchGroup> groups,
    List<LaunchMetricMonitor>? metricMonitors,
    String? name,
    required String project,
    String? randomizationSalt,
    String? region,
    LaunchScheduledSplitsConfig? scheduledSplitsConfig,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      groups = pulumi.Input.asInput<List<LaunchGroup>>(groups),
      metricMonitors = pulumi.Input.asOptionalInput<List<LaunchMetricMonitor>>(metricMonitors),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asInput<String>(project),
      randomizationSalt = pulumi.Input.asOptionalInput<String>(randomizationSalt),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduledSplitsConfig = pulumi.Input.asOptionalInput<LaunchScheduledSplitsConfig>(scheduledSplitsConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groups': pulumi.Input.mapInputValue<List<LaunchGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<LaunchGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricMonitors': ?pulumi.Input.mapOptionalInputValue<List<LaunchMetricMonitor>, List<Map<String, dynamic>>>(metricMonitors, (value) => pulumi.Input.encodeList<LaunchMetricMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': project,
      'randomizationSalt': ?randomizationSalt,
      'region': ?region,
      'scheduledSplitsConfig': ?pulumi.Input.mapOptionalInputValue<LaunchScheduledSplitsConfig, Map<String, dynamic>>(scheduledSplitsConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LaunchArgs.fromMap(Map<String, dynamic> map) {
    return LaunchArgs(
      description: map['description'] == null ? null : map['description'] as String,
      groups: pulumi.Input.decodeList<LaunchGroup>(map['groups'], (value) => LaunchGroup.fromMap((value as Map).cast<String, dynamic>())),
      metricMonitors: map['metricMonitors'] == null ? null : pulumi.Input.decodeList<LaunchMetricMonitor>(map['metricMonitors'], (value) => LaunchMetricMonitor.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] as String,
      randomizationSalt: map['randomizationSalt'] == null ? null : map['randomizationSalt'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scheduledSplitsConfig: map['scheduledSplitsConfig'] == null ? null : LaunchScheduledSplitsConfig.fromMap((map['scheduledSplitsConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

