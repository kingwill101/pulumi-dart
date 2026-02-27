// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeyRingIamPolicy.
class GetKeyRingIamPolicyArgs {
  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> keyRingId;

  GetKeyRingIamPolicyArgs({
    required this.keyRingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyRingId'] = keyRingId;
    return map;
  }

  factory GetKeyRingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingIamPolicyArgs(
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
    );
  }
}
