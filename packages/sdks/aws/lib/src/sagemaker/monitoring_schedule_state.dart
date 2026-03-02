// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config.dart';

/// Input properties used for looking up and filtering MonitoringSchedule resources.
class MonitoringScheduleState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this monitoring schedule.
  final pulumi.Input<String>? arn;
  /// The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfig>? monitoringScheduleConfig;
  /// The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MonitoringScheduleState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this monitoring schedule.
  /// [monitoringScheduleConfig] The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  /// [name] The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  MonitoringScheduleState({
    this.arn,
    this.monitoringScheduleConfig,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'monitoringScheduleConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfig, Map<String, dynamic>>(monitoringScheduleConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MonitoringScheduleState.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      monitoringScheduleConfig: map['monitoringScheduleConfig'] == null ? null : (MonitoringScheduleMonitoringScheduleConfig.fromMap((map['monitoringScheduleConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

