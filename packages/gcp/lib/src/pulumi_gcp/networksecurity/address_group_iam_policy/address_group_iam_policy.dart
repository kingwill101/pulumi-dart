import 'package:pulumi/pulumi.dart';
import 'address_group_iam_policy_args.dart';

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
/// $ pulumi import gcp:networksecurity/addressGroupIamPolicy:AddressGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamPolicy:AddressGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamPolicy:AddressGroupIamPolicy editor projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AddressGroupIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the gateway security policy.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  AddressGroupIamPolicy(
    String name, {
    AddressGroupIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/addressGroupIamPolicy:AddressGroupIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
