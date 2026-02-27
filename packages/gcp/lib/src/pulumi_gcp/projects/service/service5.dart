import 'package:pulumi/pulumi.dart';
import 'service_args5.dart';

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
class Service5 extends CustomResource {
  /// Beta
  /// If `true`, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  late final Output<bool?> checkIfServiceHasUsageOnDestroy;

  /// If `true`, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If `false` or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  late final Output<bool?> disableDependentServices;
  late final Output<bool?> disableOnDestroy;

  /// The project ID. If not provided, the provider project
  /// is used.
  late final Output<String> project;

  /// The service to enable.
  late final Output<String> service;

  Service5(
    String name, {
    ServiceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
