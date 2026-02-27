import 'package:pulumi/pulumi.dart' as pulumi;
import '../crypto_key_iambinding_condition/crypto_key_iambinding_condition.dart';
import 'crypto_key_iambinding_args.dart';

/// Three different resources help you manage your IAM policy for KMS crypto key. Each of these resources serves a different use case:
///
/// * `gcp.kms.CryptoKeyIAMPolicy`: Authoritative. Sets the IAM policy for the crypto key and replaces any existing policy already attached.
/// * `gcp.kms.CryptoKeyIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the crypto key are preserved.
/// * `gcp.kms.CryptoKeyIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the crypto key are preserved.
///
/// > **Note:** `gcp.kms.CryptoKeyIAMPolicy` **cannot** be used in conjunction with `gcp.kms.CryptoKeyIAMBinding` and `gcp.kms.CryptoKeyIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.kms.CryptoKeyIAMBinding` resources **can be** used in conjunction with `gcp.kms.CryptoKeyIAMMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// With IAM Conditions:
///
///
///
///
///
/// With IAM Conditions:
///
///
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
/// IAM policy imports use the identifier of the KMS crypto key only. For example:
///
/// * `{{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}"
///
/// to = google_kms_crypto_key_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKeyIAMBinding:CryptoKeyIAMBinding default {{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}
/// ```
class CryptoKeyIAMBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyIAMBindingCondition?> condition;

  /// The crypto key ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}/{crypto_key_name}` or
  /// `{location_name}/{key_ring_name}/{crypto_key_name}`. In the second form,
  /// the provider's project setting will be used as a fallback.
  late final pulumi.Output<String> cryptoKeyId;

  /// (Computed) The etag of the project's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, jane@example.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The role that should be applied. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  CryptoKeyIAMBinding(
    String name, {
    CryptoKeyIAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyIAMBinding:CryptoKeyIAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<CryptoKeyIAMBindingCondition?>('condition');
    this.cryptoKeyId = registerOutput<String>('cryptoKeyId');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
