import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_region_forwarding_rule_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebRegionForwardingRuleServiceIamPolicy`: Authoritative. Sets the IAM policy for the webregionforwardingruleservice and replaces any existing policy already attached.
/// * `gcp.iap.WebRegionForwardingRuleServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webregionforwardingruleservice are preserved.
/// * `gcp.iap.WebRegionForwardingRuleServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webregionforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebRegionForwardingRuleServiceIamPolicy`: Retrieves the IAM policy for the webregionforwardingruleservice
///
/// > **Note:** `gcp.iap.WebRegionForwardingRuleServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebRegionForwardingRuleServiceIamBinding` and `gcp.iap.WebRegionForwardingRuleServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebRegionForwardingRuleServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.WebRegionForwardingRuleServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebRegionForwardingRuleServiceIamPolicy`: Authoritative. Sets the IAM policy for the webregionforwardingruleservice and replaces any existing policy already attached.
/// * `gcp.iap.WebRegionForwardingRuleServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webregionforwardingruleservice are preserved.
/// * `gcp.iap.WebRegionForwardingRuleServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webregionforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebRegionForwardingRuleServiceIamPolicy`: Retrieves the IAM policy for the webregionforwardingruleservice
///
/// > **Note:** `gcp.iap.WebRegionForwardingRuleServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebRegionForwardingRuleServiceIamBinding` and `gcp.iap.WebRegionForwardingRuleServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebRegionForwardingRuleServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.WebRegionForwardingRuleServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebRegionForwardingRuleServiceIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webregionforwardingruleservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebRegionForwardingRuleServiceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> forwardingRuleRegionServiceName;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  WebRegionForwardingRuleServiceIamPolicy(
    String name, {
    WebRegionForwardingRuleServiceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.forwardingRuleRegionServiceName =
        registerOutput<String>('forwardingRuleRegionServiceName');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
