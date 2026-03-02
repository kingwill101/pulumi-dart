// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config.dart';

/// {@template pulumi_sagemaker_monitoring_schedule_monitoring_schedule_args_doc}
/// The set of arguments for MonitoringSchedule.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_monitoring_schedule_monitoring_schedule_args_doc}
class MonitoringScheduleArgs {
  /// The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfig> monitoringScheduleConfig;
  /// The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MonitoringScheduleArgs].
  /// [monitoringScheduleConfig] The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  /// [name] The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MonitoringScheduleArgs({
    required this.monitoringScheduleConfig,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoringScheduleConfig': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfig, Map<String, dynamic>>(monitoringScheduleConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory MonitoringScheduleArgs.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleArgs(
      monitoringScheduleConfig: (MonitoringScheduleMonitoringScheduleConfig.fromMap((map['monitoringScheduleConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

