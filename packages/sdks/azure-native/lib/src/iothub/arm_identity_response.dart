// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_user_identity_response.dart';

class ArmIdentityResponse {
  /// Principal Id
  final pulumi.Input<String> principalId;
  /// Tenant Id
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final pulumi.Input<String>? type;
  final pulumi.Input<Map<String, ArmUserIdentityResponse>>? userAssignedIdentities;

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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, ArmUserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<ArmUserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArmIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ArmIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<ArmUserIdentityResponse>(map['userAssignedIdentities']!, (value) => ArmUserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

