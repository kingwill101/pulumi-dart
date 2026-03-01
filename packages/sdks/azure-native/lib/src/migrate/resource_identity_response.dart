// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

class ResourceIdentityResponse {
  final String? principalId;
  final String? tenantId;
  final String? type;
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Optional.
  /// [userAssignedIdentities] Optional.
  ResourceIdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

