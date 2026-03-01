// ignore_for_file: unused_element, unnecessary_cast


/// The user associated with the access policy.
class AccessPolicyAssignmentPropertiesUser {
  /// The object ID of the user.
  final String? objectId;

  /// Creates a new [AccessPolicyAssignmentPropertiesUser].
  /// [objectId] The object ID of the user.
  AccessPolicyAssignmentPropertiesUser({
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
    };
  }

  factory AccessPolicyAssignmentPropertiesUser.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentPropertiesUser(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

