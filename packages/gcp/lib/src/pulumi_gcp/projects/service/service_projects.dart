import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_projects_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Project services can be imported using the `project_id` and `service`, e.g.
///
/// * `{{project_id}}/{{service}}`
///
/// When using the `pulumi import` command, project services can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/service:Service default {{project_id}}/{{service}}
/// ```
///
/// Note that unlike other resources that fail if they already exist,
///
/// `pulumi up` can be successfully used to verify already enabled services.
///
/// This means that when importing existing resources into Terraform, you can either
///
/// import the `google_project_service` resources or treat them as new
///
/// infrastructure and run `pulumi up` to add them to state.
class ServiceProjects extends pulumi.CustomResource {
  /// Beta
  /// If `true`, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  late final pulumi.Output<bool?> checkIfServiceHasUsageOnDestroy;

  /// If `true`, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If `false` or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  late final pulumi.Output<bool?> disableDependentServices;
  late final pulumi.Output<bool?> disableOnDestroy;

  /// The project ID. If not provided, the provider project
  /// is used.
  late final pulumi.Output<String> project;

  /// The service to enable.
  late final pulumi.Output<String> service;

  ServiceProjects(
    String name, {
    ServiceProjectsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkIfServiceHasUsageOnDestroy =
        registerOutput<bool?>('checkIfServiceHasUsageOnDestroy');
    this.disableDependentServices =
        registerOutput<bool?>('disableDependentServices');
    this.disableOnDestroy = registerOutput<bool?>('disableOnDestroy');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
