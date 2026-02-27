import 'package:pulumi/pulumi.dart';
import 'web_forwarding_rule_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebForwardingRuleService. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebForwardingRuleServiceIamPolicy`: Authoritative. Sets the IAM policy for the webforwardingruleservice and replaces any existing policy already attached.
/// * `gcp.iap.WebForwardingRuleServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webforwardingruleservice are preserved.
/// * `gcp.iap.WebForwardingRuleServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebForwardingRuleServiceIamPolicy`: Retrieves the IAM policy for the webforwardingruleservice
///
/// > **Note:** `gcp.iap.WebForwardingRuleServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebForwardingRuleServiceIamBinding` and `gcp.iap.WebForwardingRuleServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebForwardingRuleServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.WebForwardingRuleServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamMember
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
/// # IAM policy for Identity-Aware Proxy WebForwardingRuleService
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebForwardingRuleService. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebForwardingRuleServiceIamPolicy`: Authoritative. Sets the IAM policy for the webforwardingruleservice and replaces any existing policy already attached.
/// * `gcp.iap.WebForwardingRuleServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webforwardingruleservice are preserved.
/// * `gcp.iap.WebForwardingRuleServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebForwardingRuleServiceIamPolicy`: Retrieves the IAM policy for the webforwardingruleservice
///
/// > **Note:** `gcp.iap.WebForwardingRuleServiceIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebForwardingRuleServiceIamBinding` and `gcp.iap.WebForwardingRuleServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebForwardingRuleServiceIamBinding` resources **can be** used in conjunction with `gcp.iap.WebForwardingRuleServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebForwardingRuleServiceIamMember
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
/// * projects/{{project}}/iap_web/forwarding_rule/services/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webforwardingruleservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webForwardingRuleServiceIamPolicy:WebForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule/services/{{web_forwarding_rule_service}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webForwardingRuleServiceIamPolicy:WebForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule/services/{{web_forwarding_rule_service}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webForwardingRuleServiceIamPolicy:WebForwardingRuleServiceIamPolicy editor projects/{{project}}/iap_web/forwarding_rule/services/{{web_forwarding_rule_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebForwardingRuleServiceIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> forwardingRuleServiceName;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  WebForwardingRuleServiceIamPolicy(
    String name, {
    WebForwardingRuleServiceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webForwardingRuleServiceIamPolicy:WebForwardingRuleServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.forwardingRuleServiceName =
        registerOutput<String>('forwardingRuleServiceName');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
