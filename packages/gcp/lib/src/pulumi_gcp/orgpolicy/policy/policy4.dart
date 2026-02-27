import 'package:pulumi/pulumi.dart';
import '../policy_dry_run_spec/policy_dry_run_spec.dart';
import '../policy_spec/policy_spec.dart';
import 'policy_args4.dart';

/// Defines an organization policy which is used to specify constraints for configurations of Google Cloud resources.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/orgpolicy/rest/v2/organizations.policies)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints)
/// * [Supported Services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services)
///
/// ## Example Usage
///
/// ### Org Policy Policy Enforce
///
///
///
/// ### Org Policy Policy Folder
///
///
///
/// ### Org Policy Policy Organization
///
///
///
/// ### Org Policy Policy Project
///
///
///
/// ### Org Policy Policy Dry Run Spec
///
///
///
/// ### Org Policy Policy Parameters Enforce
///
///
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `{{parent}}/policies/{{name}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:orgpolicy/policy:Policy default {{parent}}/policies/{{name}}
/// ```
class Policy4 extends CustomResource {
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// Structure is documented below.
  late final Output<PolicyDryRunSpec?> dryRunSpec;

  /// Optional. An opaque tag indicating the current state of the policy, used for concurrency control. This 'etag' is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  late final Output<String> name;

  /// The parent of the resource.
  late final Output<String> parent;

  /// Basic information about the Organization Policy.
  /// Structure is documented below.
  late final Output<PolicySpec?> spec;

  Policy4(
    String name, {
    PolicyArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:orgpolicy/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dryRunSpec = registerOutput<PolicyDryRunSpec?>('dryRunSpec');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.spec = registerOutput<PolicySpec?>('spec');
  }
}
