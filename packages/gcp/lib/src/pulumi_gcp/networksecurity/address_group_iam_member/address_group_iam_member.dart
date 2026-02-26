import 'package:pulumi/pulumi.dart';
import '../address_group_iam_member_condition/address_group_iam_member_condition.dart';
import 'address_group_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Network Security ProjectAddressGroup. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-go="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-python="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamPolicy`">`gcp.networksecurity.AddressGroupIamPolicy`</span>: Authoritative. Sets the IAM policy for the projectaddressgroup and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-go="`networksecurity.AddressGroupIamBinding`" pulumi-lang-python="`networksecurity.AddressGroupIamBinding`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamBinding`">`gcp.networksecurity.AddressGroupIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the projectaddressgroup are preserved.
/// * <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-go="`networksecurity.AddressGroupIamMember`" pulumi-lang-python="`networksecurity.AddressGroupIamMember`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamMember`">`gcp.networksecurity.AddressGroupIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the projectaddressgroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-go="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-python="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamPolicy`">`gcp.networksecurity.AddressGroupIamPolicy`</span>: Retrieves the IAM policy for the projectaddressgroup
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-go="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-python="`networksecurity.AddressGroupIamPolicy`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamPolicy`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamPolicy`">`gcp.networksecurity.AddressGroupIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-go="`networksecurity.AddressGroupIamBinding`" pulumi-lang-python="`networksecurity.AddressGroupIamBinding`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamBinding`">`gcp.networksecurity.AddressGroupIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-go="`networksecurity.AddressGroupIamMember`" pulumi-lang-python="`networksecurity.AddressGroupIamMember`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamMember`">`gcp.networksecurity.AddressGroupIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-go="`networksecurity.AddressGroupIamBinding`" pulumi-lang-python="`networksecurity.AddressGroupIamBinding`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamBinding`">`gcp.networksecurity.AddressGroupIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-go="`networksecurity.AddressGroupIamMember`" pulumi-lang-python="`networksecurity.AddressGroupIamMember`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamMember`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamMember`">`gcp.networksecurity.AddressGroupIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.networksecurity.AddressGroupIamPolicy
/// " pulumi-lang-dotnet=" gcp.networksecurity.AddressGroupIamPolicy
/// " pulumi-lang-go=" networksecurity.AddressGroupIamPolicy
/// " pulumi-lang-python=" networksecurity.AddressGroupIamPolicy
/// " pulumi-lang-yaml=" gcp.networksecurity.AddressGroupIamPolicy
/// " pulumi-lang-java=" gcp.networksecurity.AddressGroupIamPolicy
/// "> gcp.networksecurity.AddressGroupIamPolicy
/// </span>
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/addressGroups/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Network Security projectaddressgroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember editor projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AddressGroupIamMember extends CustomResource {
  late final Output<AddressGroupIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the gateway security policy.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-dotnet="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-go="`networksecurity.AddressGroupIamBinding`" pulumi-lang-python="`networksecurity.AddressGroupIamBinding`" pulumi-lang-yaml="`gcp.networksecurity.AddressGroupIamBinding`" pulumi-lang-java="`gcp.networksecurity.AddressGroupIamBinding`">`gcp.networksecurity.AddressGroupIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  AddressGroupIamMember(
    String name, {
    AddressGroupIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<AddressGroupIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
