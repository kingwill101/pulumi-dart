import 'package:pulumi/pulumi.dart';
import '../key_ring_iambinding_condition/key_ring_iambinding_condition.dart';
import 'key_ring_iambinding_args.dart';

/// Three different resources help you manage your IAM policy for KMS key ring. Each of these resources serves a different use case:
///
/// * `gcp.kms.KeyRingIAMPolicy`: Authoritative. Sets the IAM policy for the key ring and replaces any existing policy already attached.
/// * `gcp.kms.KeyRingIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the key ring are preserved.
/// * `gcp.kms.KeyRingIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the key ring are preserved.
///
/// > **Note:** `gcp.kms.KeyRingIAMPolicy` **cannot** be used in conjunction with `gcp.kms.KeyRingIAMBinding` and `gcp.kms.KeyRingIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.kms.KeyRingIAMBinding` resources **can be** used in conjunction with `gcp.kms.KeyRingIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.kms.KeyRingIAMPolicy
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.kms.KeyRingIAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.kms.KeyRingIAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.kms.KeyRingIAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.kms.KeyRingIAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Cloud KMS key ring only. For example:
///
/// * `{{project_id}}/{{location}}/{{key_ring_name}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{key_ring_name}}"
///
/// to = google_kms_key_ring_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:kms/keyRingIAMBinding:KeyRingIAMBinding default {{project_id}}/{{location}}/{{key_ring_name}}
/// ```
class KeyRingIAMBinding extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<KeyRingIAMBindingCondition?> condition;

  /// (Computed) The etag of the key ring's IAM policy.
  late final Output<String> etag;

  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final Output<String> keyRingId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.kms.KeyRingIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  KeyRingIAMBinding(
    String name, {
    KeyRingIAMBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingIAMBinding:KeyRingIAMBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<KeyRingIAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
