// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_ring_iam_policy_get_key_ring_iam_policy_args_doc}
/// Arguments for getKeyRingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_ring_iam_policy_get_key_ring_iam_policy_args_doc}
class GetKeyRingIamPolicyArgs {
  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> keyRingId;

  /// Creates a new [GetKeyRingIamPolicyArgs].
  /// [keyRingId] The key ring ID, in the form
  GetKeyRingIamPolicyArgs({required String keyRingId})
    : keyRingId = pulumi.Input.asInput<String>(keyRingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyRingId': keyRingId};
  }

  factory GetKeyRingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingIamPolicyArgs(keyRingId: map['keyRingId'] as String);
  }
}
