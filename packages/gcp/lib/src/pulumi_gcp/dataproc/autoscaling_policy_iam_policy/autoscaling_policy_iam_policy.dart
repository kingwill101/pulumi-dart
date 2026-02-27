import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * `gcp.dataproc.AutoscalingPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved.
/// * `gcp.dataproc.AutoscalingPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Retrieves the IAM policy for the autoscalingpolicy
///
/// > **Note:** `gcp.dataproc.AutoscalingPolicyIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.AutoscalingPolicyIamBinding` and `gcp.dataproc.AutoscalingPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.AutoscalingPolicyIamBinding` resources **can be** used in conjunction with `gcp.dataproc.AutoscalingPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamPolicy
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamBinding
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataproc AutoscalingPolicy
///
/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * `gcp.dataproc.AutoscalingPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved.
/// * `gcp.dataproc.AutoscalingPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.AutoscalingPolicyIamPolicy`: Retrieves the IAM policy for the autoscalingpolicy
///
/// > **Note:** `gcp.dataproc.AutoscalingPolicyIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.AutoscalingPolicyIamBinding` and `gcp.dataproc.AutoscalingPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.AutoscalingPolicyIamBinding` resources **can be** used in conjunction with `gcp.dataproc.AutoscalingPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamPolicy
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamBinding
///
///
///
/// ## gcp.dataproc.AutoscalingPolicyIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
///
/// * {{project}}/{{location}}/{{policy_id}}
///
/// * {{location}}/{{policy_id}}
///
/// * {{policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc autoscalingpolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamPolicy:AutoscalingPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamPolicy:AutoscalingPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamPolicy:AutoscalingPolicyIamPolicy editor projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AutoscalingPolicyIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  AutoscalingPolicyIamPolicy(
    String name, {
    AutoscalingPolicyIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicyIamPolicy:AutoscalingPolicyIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
  }
}
