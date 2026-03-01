// ignore_for_file: unused_element, unnecessary_cast


/// A user that can be assigned to a compute instance.
class AssignedUser {
  /// User’s AAD Object Id.
  final String objectId;
  /// User’s AAD Tenant Id.
  final String tenantId;

  /// Creates a new [AssignedUser].
  /// [objectId] User’s AAD Object Id.
  /// [tenantId] User’s AAD Tenant Id.
  AssignedUser({
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory AssignedUser.fromMap(Map<String, dynamic> map) {
    return AssignedUser(
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

