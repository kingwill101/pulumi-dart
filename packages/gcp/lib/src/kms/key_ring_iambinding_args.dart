// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_iambinding_condition.dart';

/// {@template pulumi_kms_key_ring_iambinding_key_ring_iambinding_args_doc}
/// The set of arguments for KeyRingIAMBinding.
/// {@endtemplate}
/// {@macro pulumi_kms_key_ring_iambinding_key_ring_iambinding_args_doc}
class KeyRingIAMBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<KeyRingIAMBindingCondition>? condition;
  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> keyRingId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.kms.KeyRingIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [KeyRingIAMBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [keyRingId] The key ring ID, in the form
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  KeyRingIAMBindingArgs({
    KeyRingIAMBindingCondition? condition,
    required String keyRingId,
    required List<String> members,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<KeyRingIAMBindingCondition>(condition),
      keyRingId = pulumi.Input.asInput<String>(keyRingId),
      members = pulumi.Input.asInput<List<String>>(members),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<KeyRingIAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'keyRingId': keyRingId,
      'members': members,
      'role': role,
    };
  }

  factory KeyRingIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingIAMBindingArgs(
      condition: map['condition'] == null ? null : KeyRingIAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      keyRingId: map['keyRingId'] as String,
      members: (map['members'] as List).cast<String>(),
      role: map['role'] as String,
    );
  }
}

