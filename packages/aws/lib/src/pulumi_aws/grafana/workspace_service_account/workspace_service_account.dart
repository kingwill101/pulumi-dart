import 'package:pulumi/pulumi.dart';
import 'workspace_service_account_args.dart';

/// > **Note:** You cannot update a service account. If you change any attribute, Terraform
/// will delete the current and create a new one.
///
/// Read about Service Accounts in the [Amazon Managed Grafana user guide](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Managed Grafana Workspace Service Account using the `workspace_id` and `service_account_id` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspaceServiceAccount:WorkspaceServiceAccount example g-abc12345,1
/// ```
class WorkspaceServiceAccount extends CustomResource {
  /// The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  late final Output<String> grafanaRole;

  /// A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the service account in the given Grafana workspace
  late final Output<String> serviceAccountId;

  /// The Grafana workspace with which the service account is associated.
  late final Output<String> workspaceId;

  WorkspaceServiceAccount(
    String name, {
    WorkspaceServiceAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceServiceAccount:WorkspaceServiceAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.grafanaRole = registerOutput<String>('grafanaRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
