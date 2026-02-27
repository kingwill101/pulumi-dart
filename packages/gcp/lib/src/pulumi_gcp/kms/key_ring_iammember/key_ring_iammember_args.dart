// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../key_ring_iammember_condition/key_ring_iammember_condition.dart';

/// The set of arguments for KeyRingIAMMember.
class KeyRingIAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<KeyRingIAMMemberCondition>? condition;

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
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.kms.KeyRingIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  KeyRingIAMMemberArgs({
    this.condition,
    required this.keyRingId,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          KeyRingIAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['keyRingId'] = keyRingId;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory KeyRingIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingIAMMemberArgs(
      condition: pulumi.Input.asOptionalInput<KeyRingIAMMemberCondition>(
          map['condition']),
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
      member: pulumi.Input.asInput<String>(map['member']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
