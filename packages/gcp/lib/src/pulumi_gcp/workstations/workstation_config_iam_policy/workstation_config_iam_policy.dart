import 'package:pulumi/pulumi.dart';
import 'workstation_config_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
///
///
///
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Workstations WorkstationConfig
///
/// Three different resources help you manage your IAM policy for Cloud Workstations WorkstationConfig. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Authoritative. Sets the IAM policy for the workstationconfig and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationConfigIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstationconfig are preserved.
/// * `gcp.workstations.WorkstationConfigIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstationconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationConfigIamPolicy`: Retrieves the IAM policy for the workstationconfig
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationConfigIamBinding` and `gcp.workstations.WorkstationConfigIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationConfigIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationConfigIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationConfigIamPolicy
///
///
///
/// ## gcp.workstations.WorkstationConfigIamBinding
///
///
///
/// ## gcp.workstations.WorkstationConfigIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
///
/// * {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
///
/// * {{workstation_config_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Workstations workstationconfig IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy editor projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkstationConfigIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location where the workstation cluster config should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> workstationClusterId;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> workstationConfigId;

  WorkstationConfigIamPolicy(
    String name, {
    WorkstationConfigIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfigIamPolicy:WorkstationConfigIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
