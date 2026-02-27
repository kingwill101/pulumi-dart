import 'package:pulumi/pulumi.dart' as pulumi;
import '../consumers_iam_binding_condition/consumers_iam_binding_condition.dart';
import 'consumers_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Endpoints ServiceConsumers. Each of these resources serves a different use case:
///
/// * `gcp.endpoints.ConsumersIamPolicy`: Authoritative. Sets the IAM policy for the serviceconsumers and replaces any existing policy already attached.
/// * `gcp.endpoints.ConsumersIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the serviceconsumers are preserved.
/// * `gcp.endpoints.ConsumersIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the serviceconsumers are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.endpoints.ConsumersIamPolicy`: Retrieves the IAM policy for the serviceconsumers
///
/// > **Note:** `gcp.endpoints.ConsumersIamPolicy` **cannot** be used in conjunction with `gcp.endpoints.ConsumersIamBinding` and `gcp.endpoints.ConsumersIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.endpoints.ConsumersIamBinding` resources **can be** used in conjunction with `gcp.endpoints.ConsumersIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.endpoints.ConsumersIamPolicy
///
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
/// $ pulumi import gcp:endpoints/consumersIamBinding:ConsumersIamBinding editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamBinding:ConsumersIamBinding editor "services/{{service_name}}/consumers/{{consumer_project}} roles/servicemanagement.serviceController"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:endpoints/consumersIamBinding:ConsumersIamBinding editor services/{{service_name}}/consumers/{{consumer_project}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConsumersIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<ConsumersIamBindingCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> consumerProject;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
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
  late final pulumi.Output<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.endpoints.ConsumersIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> serviceName;

  ConsumersIamBinding(
    String name, {
    ConsumersIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:endpoints/consumersIamBinding:ConsumersIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<ConsumersIamBindingCondition?>('condition');
    this.consumerProject = registerOutput<String>('consumerProject');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
    this.serviceName = registerOutput<String>('serviceName');
  }
}
