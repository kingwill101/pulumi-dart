// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

class ResourceIdentity {
  final String? principalId;
  final String? tenantId;
  final String? type;
  final Map<String, UserAssignedIdentity>? userAssignedIdentities;

  /// Creates a new [ResourceIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Optional.
  /// [userAssignedIdentities] Optional.
  ResourceIdentity({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentity>(map['userAssignedIdentities'], (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

