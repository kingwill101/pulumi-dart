import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Workstations Workstation. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationIamPolicy`: Authoritative. Sets the IAM policy for the workstation and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstation are preserved.
/// * `gcp.workstations.WorkstationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationIamPolicy`: Retrieves the IAM policy for the workstation
///
/// > **Note:** `gcp.workstations.WorkstationIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationIamBinding` and `gcp.workstations.WorkstationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationIamPolicy
///
///
///
/// ## gcp.workstations.WorkstationIamBinding
///
///
///
/// ## gcp.workstations.WorkstationIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Workstations Workstation
///
/// Three different resources help you manage your IAM policy for Cloud Workstations Workstation. Each of these resources serves a different use case:
///
/// * `gcp.workstations.WorkstationIamPolicy`: Authoritative. Sets the IAM policy for the workstation and replaces any existing policy already attached.
/// * `gcp.workstations.WorkstationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workstation are preserved.
/// * `gcp.workstations.WorkstationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workstation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.workstations.WorkstationIamPolicy`: Retrieves the IAM policy for the workstation
///
/// > **Note:** `gcp.workstations.WorkstationIamPolicy` **cannot** be used in conjunction with `gcp.workstations.WorkstationIamBinding` and `gcp.workstations.WorkstationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.workstations.WorkstationIamBinding` resources **can be** used in conjunction with `gcp.workstations.WorkstationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.workstations.WorkstationIamPolicy
///
///
///
/// ## gcp.workstations.WorkstationIamBinding
///
///
///
/// ## gcp.workstations.WorkstationIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}
///
/// * {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
///
/// * {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
///
/// * {{workstation_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Workstations workstation IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationIamPolicy:WorkstationIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationIamPolicy:WorkstationIamPolicy editor "projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationIamPolicy:WorkstationIamPolicy editor projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkstationIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location where the workstation parent resources reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationConfigId;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workstationId;

  WorkstationIamPolicy(
    String name, {
    WorkstationIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationIamPolicy:WorkstationIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
    this.workstationId = registerOutput<String>('workstationId');
  }
}
