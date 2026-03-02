// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A user that can be assigned to a compute instance.
class AssignedUserResponse {
  /// User’s AAD Object Id.
  final pulumi.Input<String> objectId;
  /// User’s AAD Tenant Id.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AssignedUserResponse].
  /// [objectId] User’s AAD Object Id.
  /// [tenantId] User’s AAD Tenant Id.
  AssignedUserResponse({
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory AssignedUserResponse.fromMap(Map<String, dynamic> map) {
    return AssignedUserResponse(
      objectId: (map['objectId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

