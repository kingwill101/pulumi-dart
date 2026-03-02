// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

class ResourceIdentity {
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<String>? type;
  final pulumi.Input<Map<String, UserAssignedIdentity>>? userAssignedIdentities;

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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentity>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedIdentity>(map['userAssignedIdentities']!, (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

