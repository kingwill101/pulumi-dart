// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

class ResourceIdentityResponse {
  final pulumi.Input<String?>? principalId;
  final pulumi.Input<String?>? tenantId;
  final pulumi.Input<String?>? type;
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Optional.
  /// [userAssignedIdentities] Optional.
  const ResourceIdentityResponse({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
