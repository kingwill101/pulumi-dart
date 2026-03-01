// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response_user_assigned_identities.dart';

/// Identity for the resource.
class IdentityResponse {
  /// The principal ID of resource identity.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;
  /// The identity type.
  final String? type;
  /// The list of user identities associated with the resource.
  final Map<String, IdentityResponseUserAssignedIdentities>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  /// [userAssignedIdentities] The list of user identities associated with the resource.
  IdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<IdentityResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<IdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => IdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

