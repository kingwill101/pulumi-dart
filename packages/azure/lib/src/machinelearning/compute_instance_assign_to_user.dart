// ignore_for_file: unused_element, unnecessary_cast


class ComputeInstanceAssignToUser {
  /// User’s AAD Object Id.
  final String? objectId;
  /// User’s AAD Tenant Id.
  final String? tenantId;

  /// Creates a new [ComputeInstanceAssignToUser].
  /// [objectId] User’s AAD Object Id.
  /// [tenantId] User’s AAD Tenant Id.
  ComputeInstanceAssignToUser({
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ComputeInstanceAssignToUser.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceAssignToUser(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

