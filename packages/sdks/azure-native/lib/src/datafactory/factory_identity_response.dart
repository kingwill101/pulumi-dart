// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity properties of the factory resource.
class FactoryIdentityResponse {
  /// The principal id of the identity.
  final pulumi.Input<String> principalId;
  /// The client tenant id of the identity.
  final pulumi.Input<String> tenantId;
  /// The identity type.
  final pulumi.Input<String> type;
  /// List of user assigned identities for the factory.
  final pulumi.Input<Map<String, dynamic>>? userAssignedIdentities;

  /// Creates a new [FactoryIdentityResponse].
  /// [principalId] The principal id of the identity.
  /// [tenantId] The client tenant id of the identity.
  /// [type] The identity type.
  /// [userAssignedIdentities] List of user assigned identities for the factory.
  FactoryIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory FactoryIdentityResponse.fromMap(Map<String, dynamic> map) {
    return FactoryIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

