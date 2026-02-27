import 'package:pulumi/pulumi.dart';
import '../repository_workflow_config_invocation_config/repository_workflow_config_invocation_config.dart';
import '../repository_workflow_config_recent_scheduled_execution_record/repository_workflow_config_recent_scheduled_execution_record.dart';
import 'repository_workflow_config_args.dart';

/// A resource represents a Dataform workflow configuration
///
/// To get more information about RepositoryWorkflowConfig, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories.workflowConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/workflow-configurations)
///
/// ## Example Usage
///
/// ### Dataform Repository Workflow Config
///
///
///
///
/// ## Import
///
/// RepositoryWorkflowConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{repository}}/workflowConfigs/{{name}}`
///
/// * `{{project}}/{{region}}/{{repository}}/{{name}}`
///
/// * `{{region}}/{{repository}}/{{name}}`
///
/// * `{{repository}}/{{name}}`
///
/// When using the `pulumi import` command, RepositoryWorkflowConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default projects/{{project}}/locations/{{region}}/repositories/{{repository}}/workflowConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{project}}/{{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{repository}}/{{name}}
/// ```
class RepositoryWorkflowConfig extends CustomResource {
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  late final Output<String?> cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  /// Structure is documented below.
  late final Output<RepositoryWorkflowConfigInvocationConfig?> invocationConfig;

  /// The workflow's name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of executionTime. Updated whenever automatic creation of a workflow invocation is triggered by cronSchedule.
  /// Structure is documented below.
  late final Output<
          List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>
      recentScheduledExecutionRecords;

  /// A reference to the region
  late final Output<String?> region;

  /// The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  late final Output<String> releaseConfig;

  /// A reference to the Dataform repository
  late final Output<String?> repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final Output<String?> timeZone;

  RepositoryWorkflowConfig(
    String name, {
    RepositoryWorkflowConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cronSchedule = registerOutput<String?>('cronSchedule');
    this.invocationConfig =
        registerOutput<RepositoryWorkflowConfigInvocationConfig?>(
            'invocationConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentScheduledExecutionRecords = registerOutput<
            List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>(
        'recentScheduledExecutionRecords');
    this.region = registerOutput<String?>('region');
    this.releaseConfig = registerOutput<String>('releaseConfig');
    this.repository = registerOutput<String?>('repository');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
