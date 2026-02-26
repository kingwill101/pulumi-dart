import 'package:pulumi/pulumi.dart';
import '../consumers_iam_member_condition/consumers_iam_member_condition.dart';
import 'consumers_iam_member_args.dart';

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
/// $ pulumi import gcp:endpoints/consumersIamMember:ConsumersIamMember editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamMember:ConsumersIamMember editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamMember:ConsumersIamMember editor services/{{service_name}}/consumers/{{consumer_project}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConsumersIamMember extends CustomResource {
  late final Output<ConsumersIamMemberCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> consumerProject;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

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

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-dotnet="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-go="`endpoints.ConsumersIamBinding`" pulumi-lang-python="`endpoints.ConsumersIamBinding`" pulumi-lang-yaml="`gcp.endpoints.ConsumersIamBinding`" pulumi-lang-java="`gcp.endpoints.ConsumersIamBinding`">`gcp.endpoints.ConsumersIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  late final Output<String> serviceName;

  ConsumersIamMember(
    String name, {
    ConsumersIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:endpoints/consumersIamMember:ConsumersIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<ConsumersIamMemberCondition?>('condition');
    this.consumerProject = registerOutput<String>('consumerProject');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.role = registerOutput<String>('role');
    this.serviceName = registerOutput<String>('serviceName');
  }
}
