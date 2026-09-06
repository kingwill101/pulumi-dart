// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_user_identity_response.dart';

class ArmIdentityResponse {
  /// Principal Id
  final pulumi.Input<String> principalId;
  /// Tenant Id
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final pulumi.Input<String?>? type;
  final pulumi.Input<Map<String, ArmUserIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [ArmIdentityResponse].
  /// [principalId] Principal Id
  /// [tenantId] Tenant Id
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] Optional.
  const ArmIdentityResponse({
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
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ArmUserIdentityResponse>(guardedValue, (value) => ArmUserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
