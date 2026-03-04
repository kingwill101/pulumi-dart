// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

/// Managed identity generic object.
class ManagedServiceIdentity {
  /// Azure Active Directory principal ID associated with this Identity.
  final pulumi.Input<String>? principalId;

  /// ID of the Azure Active Directory.
  final pulumi.Input<String>? tenantId;

  /// Type of the managed identity.
  final pulumi.Input<String> type;

  /// The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  final pulumi.Input<Map<String, UserAssignedIdentity>>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  /// [tenantId] ID of the Azure Active Directory.
  /// [type] Type of the managed identity.
  /// [userAssignedIdentities] The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  ManagedServiceIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, UserAssignedIdentity>,
            Map<String, Map<String, dynamic>>
          >(
            userAssignedIdentities,
            (value) =>
                pulumi.Input.encodeMapValues<
                  UserAssignedIdentity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<UserAssignedIdentity>(
            guardedValue,
            (value) => UserAssignedIdentity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
