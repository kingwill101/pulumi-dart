// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_user_identity_response.dart';

class ArmIdentityResponse {
  /// Principal Id
  final String principalId;
  /// Tenant Id
  final String tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final String? type;
  final Map<String, ArmUserIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ArmIdentityResponse].
  /// [principalId] Principal Id
  /// [tenantId] Tenant Id
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] Optional.
  ArmIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<ArmUserIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ArmIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ArmIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<ArmUserIdentityResponse>(map['userAssignedIdentities'], (value) => ArmUserIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

