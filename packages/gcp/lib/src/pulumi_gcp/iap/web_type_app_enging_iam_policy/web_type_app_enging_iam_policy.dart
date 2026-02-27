import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_type_app_enging_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeAppEngine. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebTypeAppEngingIamPolicy`: Authoritative. Sets the IAM policy for the webtypeappengine and replaces any existing policy already attached.
/// * `gcp.iap.WebTypeAppEngingIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypeappengine are preserved.
/// * `gcp.iap.WebTypeAppEngingIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypeappengine are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebTypeAppEngingIamPolicy`: Retrieves the IAM policy for the webtypeappengine
///
/// > **Note:** `gcp.iap.WebTypeAppEngingIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebTypeAppEngingIamBinding` and `gcp.iap.WebTypeAppEngingIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebTypeAppEngingIamBinding` resources **can be** used in conjunction with `gcp.iap.WebTypeAppEngingIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebTypeAppEngingIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebTypeAppEngingIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebTypeAppEngingIamMember
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
/// # IAM policy for Identity-Aware Proxy WebTypeAppEngine
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeAppEngine. Each of these resources serves a different use case:
///
/// * `gcp.iap.WebTypeAppEngingIamPolicy`: Authoritative. Sets the IAM policy for the webtypeappengine and replaces any existing policy already attached.
/// * `gcp.iap.WebTypeAppEngingIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypeappengine are preserved.
/// * `gcp.iap.WebTypeAppEngingIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypeappengine are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.WebTypeAppEngingIamPolicy`: Retrieves the IAM policy for the webtypeappengine
///
/// > **Note:** `gcp.iap.WebTypeAppEngingIamPolicy` **cannot** be used in conjunction with `gcp.iap.WebTypeAppEngingIamBinding` and `gcp.iap.WebTypeAppEngingIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.WebTypeAppEngingIamBinding` resources **can be** used in conjunction with `gcp.iap.WebTypeAppEngingIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.WebTypeAppEngingIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebTypeAppEngingIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.WebTypeAppEngingIamMember
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
/// * projects/{{project}}/iap_web/appengine-{{appId}}
///
/// * {{project}}/{{appId}}
///
/// * {{appId}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webtypeappengine IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor projects/{{project}}/iap_web/appengine-{{appId}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebTypeAppEngingIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> appId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  WebTypeAppEngingIamPolicy(
    String name, {
    WebTypeAppEngingIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
