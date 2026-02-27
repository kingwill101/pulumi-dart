import 'package:pulumi/pulumi.dart' as pulumi;
import '../monitoring_schedule_monitoring_schedule_config/monitoring_schedule_monitoring_schedule_config.dart';
import 'monitoring_schedule_args.dart';

/// Provides a SageMaker AI monitoring schedule resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import monitoring schedules using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/monitoringSchedule:MonitoringSchedule test_monitoring_schedule monitoring-schedule-foo
/// ```
class MonitoringSchedule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this monitoring schedule.
  late final pulumi.Output<String> arn;

  /// The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  late final pulumi.Output<MonitoringScheduleMonitoringScheduleConfig>
      monitoringScheduleConfig;

  /// The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  MonitoringSchedule(
    String name, {
    MonitoringScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/monitoringSchedule:MonitoringSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.monitoringScheduleConfig =
        registerOutput<MonitoringScheduleMonitoringScheduleConfig>(
            'monitoringScheduleConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
