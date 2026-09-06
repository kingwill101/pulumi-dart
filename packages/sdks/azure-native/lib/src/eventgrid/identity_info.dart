// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_properties.dart';

/// The identity information for the resource.
class IdentityInfo {
  /// The principal ID of resource identity.
  final pulumi.Input<String?>? principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String?>? tenantId;
  /// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identity.
  final pulumi.Input<dynamic>? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  /// This property is currently not used and reserved for future usage.
  final pulumi.Input<Map<String, UserIdentityProperties>?>? userAssignedIdentities;

  /// Creates a new [IdentityInfo].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identity.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  const IdentityInfo({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityProperties>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityInfo.fromMap(Map<String, dynamic> map) {
    return IdentityInfo(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserIdentityProperties>(guardedValue, (value) => UserIdentityProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
