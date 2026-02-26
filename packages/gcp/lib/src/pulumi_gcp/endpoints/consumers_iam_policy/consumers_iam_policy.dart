import 'package:pulumi/pulumi.dart';
import 'consumers_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Endpoints ServiceConsumers. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-go="`endpoints.ConsumersIamPolicy`" pulumi-lang-python="`endpoints.ConsumersIamPolicy`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-java="`gcp.endpoints.ConsumersIamPolicy`">`gcp.endpoints.ConsumersIamPolicy`</span>: Authoritative. Sets the IAM policy for the serviceconsumers and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-go="`endpoints.ConsumersIamBinding`" pulumi-lang-python="`endpoints.ConsumersIamBinding`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-java="`gcp.endpoints.ConsumersIamBinding`">`gcp.endpoints.ConsumersIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the serviceconsumers are preserved.
/// * <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-go="`endpoints.ConsumersIamMember`" pulumi-lang-python="`endpoints.ConsumersIamMember`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-java="`gcp.endpoints.ConsumersIamMember`">`gcp.endpoints.ConsumersIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the serviceconsumers are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-go="`endpoints.ConsumersIamPolicy`" pulumi-lang-python="`endpoints.ConsumersIamPolicy`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-java="`gcp.endpoints.ConsumersIamPolicy`">`gcp.endpoints.ConsumersIamPolicy`</span>: Retrieves the IAM policy for the serviceconsumers
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-go="`endpoints.ConsumersIamPolicy`" pulumi-lang-python="`endpoints.ConsumersIamPolicy`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamPolicy`" pulumi-lang-java="`gcp.endpoints.ConsumersIamPolicy`">`gcp.endpoints.ConsumersIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-go="`endpoints.ConsumersIamBinding`" pulumi-lang-python="`endpoints.ConsumersIamBinding`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-java="`gcp.endpoints.ConsumersIamBinding`">`gcp.endpoints.ConsumersIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-go="`endpoints.ConsumersIamMember`" pulumi-lang-python="`endpoints.ConsumersIamMember`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-java="`gcp.endpoints.ConsumersIamMember`">`gcp.endpoints.ConsumersIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-go="`endpoints.ConsumersIamBinding`" pulumi-lang-python="`endpoints.ConsumersIamBinding`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-java="`gcp.endpoints.ConsumersIamBinding`">`gcp.endpoints.ConsumersIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-go="`endpoints.ConsumersIamMember`" pulumi-lang-python="`endpoints.ConsumersIamMember`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamMember`" pulumi-lang-java="`gcp.endpoints.ConsumersIamMember`">`gcp.endpoints.ConsumersIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.endpoints.ConsumersIamPolicy
/// " pulumi-lang-dotnet=" gcp.endpoints.ConsumersIamPolicy
/// " pulumi-lang-go=" endpoints.ConsumersIamPolicy
/// " pulumi-lang-python=" endpoints.ConsumersIamPolicy
/// " pulumi-lang-yaml=" gcp.endpoints.ConsumersIamPolicy
/// " pulumi-lang-java=" gcp.endpoints.ConsumersIamPolicy
/// "> gcp.endpoints.ConsumersIamPolicy
/// </span>
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * services/{{service_name}}/consumers/{{consumer_project}}
///
/// * {{service_name}}/{{consumer_project}}
///
/// * {{consumer_project}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Endpoints serviceconsumers IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamPolicy:ConsumersIamPolicy editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamPolicy:ConsumersIamPolicy editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamPolicy:ConsumersIamPolicy editor services/{{service_name}}/consumers/{{consumer_project}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConsumersIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> consumerProject;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  late final Output<String> serviceName;

  ConsumersIamPolicy(
    String name, {
    ConsumersIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:endpoints/consumersIamPolicy:ConsumersIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerProject = registerOutput<String>('consumerProject');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.serviceName = registerOutput<String>('serviceName');
  }
}
