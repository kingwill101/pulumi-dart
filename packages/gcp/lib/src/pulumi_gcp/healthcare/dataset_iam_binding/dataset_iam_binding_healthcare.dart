import 'package:pulumi/pulumi.dart' as pulumi;
import '../dataset_iam_binding_condition/dataset_iam_binding_condition_healthcare.dart';
import 'dataset_iam_binding_healthcare_args.dart';

/// Three different resources help you manage your IAM policy for Healthcare dataset. Each of these resources serves a different use case:
///
/// * `gcp.healthcare.DatasetIamPolicy`: Authoritative. Sets the IAM policy for the dataset and replaces any existing policy already attached.
/// * `gcp.healthcare.DatasetIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataset are preserved.
/// * `gcp.healthcare.DatasetIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved.
///
/// > **Note:** `gcp.healthcare.DatasetIamPolicy` **cannot** be used in conjunction with `gcp.healthcare.DatasetIamBinding` and `gcp.healthcare.DatasetIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.healthcare.DatasetIamBinding` resources **can be** used in conjunction with `gcp.healthcare.DatasetIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.healthcare.DatasetIamPolicy
///
///
///
/// ## gcp.healthcare.DatasetIamBinding
///
///
///
/// ## gcp.healthcare.DatasetIamMember
///
///
///
/// ## gcp.healthcare.DatasetIamBinding
///
///
///
/// ## gcp.healthcare.DatasetIamMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Healthcase Dataset resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}"
///
/// to = google_healthcare_dataset_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/datasetIamBinding:DatasetIamBinding default {{project_id}}/{{location}}/{{dataset}}
/// ```
class DatasetIamBindingHealthcare extends pulumi.CustomResource {
  late final pulumi.Output<DatasetIamBindingConditionHealthcare?> condition;

  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> datasetId;

  /// (Computed) The etag of the dataset's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.healthcare.DatasetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  DatasetIamBindingHealthcare(
    String name, {
    DatasetIamBindingHealthcareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/datasetIamBinding:DatasetIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<DatasetIamBindingConditionHealthcare?>('condition');
    this.datasetId = registerOutput<String>('datasetId');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
