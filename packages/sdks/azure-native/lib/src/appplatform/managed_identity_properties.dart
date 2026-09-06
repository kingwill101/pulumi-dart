// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity properties retrieved from ARM request headers.
class ManagedIdentityProperties {
  /// Principal Id of system-assigned managed identity.
  final pulumi.Input<String?>? principalId;
  /// Tenant Id of system-assigned managed identity.
  final pulumi.Input<String?>? tenantId;
  /// Type of the managed identity
  final pulumi.Input<dynamic>? type;
  /// Properties of user-assigned managed identities
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityProperties].
  /// [principalId] Principal Id of system-assigned managed identity.
  /// [tenantId] Tenant Id of system-assigned managed identity.
  /// [type] Type of the managed identity
  /// [userAssignedIdentities] Properties of user-assigned managed identities
  const ManagedIdentityProperties({
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
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityProperties(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
