// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A user that can be assigned to a compute instance.
class AssignedUser {
  /// User’s AAD Object Id.
  final pulumi.Input<String> objectId;
  /// User’s AAD Tenant Id.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AssignedUser].
  /// [objectId] User’s AAD Object Id.
  /// [tenantId] User’s AAD Tenant Id.
  const AssignedUser({
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
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
