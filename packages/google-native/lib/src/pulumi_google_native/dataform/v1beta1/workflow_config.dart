import 'package:pulumi/pulumi.dart' hide Config;
import 'invocation_config_response.dart';
import 'scheduled_execution_record_response.dart';
import 'workflow_config_args.dart';

/// Creates a new WorkflowConfig in a given Repository.
/// Auto-naming is currently not supported for this resource.
class WorkflowConfig extends CustomResource {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  late final Output<String> cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  late final Output<InvocationConfigResponse> invocationConfig;
  late final Output<String> location;

  /// The workflow config's name.
  late final Output<String> name;
  late final Output<String> project;

  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  late final Output<List<ScheduledExecutionRecordResponse>>
      recentScheduledExecutionRecords;

  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  late final Output<String> releaseConfig;
  late final Output<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final Output<String> timeZone;

  /// Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  late final Output<String> workflowConfigId;

  WorkflowConfig(
    String name, {
    WorkflowConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:WorkflowConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cronSchedule = registerOutput<String>('cronSchedule');
    this.invocationConfig =
        registerOutput<InvocationConfigResponse>('invocationConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentScheduledExecutionRecords =
        registerOutput<List<ScheduledExecutionRecordResponse>>(
            'recentScheduledExecutionRecords');
    this.releaseConfig = registerOutput<String>('releaseConfig');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.timeZone = registerOutput<String>('timeZone');
    this.workflowConfigId = registerOutput<String>('workflowConfigId');
  }
}
