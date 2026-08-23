// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User Assigned Identity
class UserAssignedIdentityMachineLearningDatasetResponse {
  /// The clientId(aka appId) of the user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the user assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of the user assigned identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [UserAssignedIdentityMachineLearningDatasetResponse].
  /// [clientId] The clientId(aka appId) of the user assigned identity.
  /// [principalId] The principal ID of the user assigned identity.
  /// [tenantId] The tenant ID of the user assigned identity.
  const UserAssignedIdentityMachineLearningDatasetResponse({
    required this.clientId,
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory UserAssignedIdentityMachineLearningDatasetResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityMachineLearningDatasetResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
