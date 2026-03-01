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
    pulumi.Output<String>? arn,
    pulumi.Output<MonitoringScheduleMonitoringScheduleConfig>? monitoringScheduleConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      monitoringScheduleConfig = pulumi.Input.asOptionalInput<MonitoringScheduleMonitoringScheduleConfig>(monitoringScheduleConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      monitoringScheduleConfig: map['monitoringScheduleConfig'] == null ? null : pulumi.Output.create<MonitoringScheduleMonitoringScheduleConfig>(MonitoringScheduleMonitoringScheduleConfig.fromMap((map['monitoringScheduleConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

