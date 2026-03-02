// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';
import 'user_identity_properties.dart';

/// Managed identity for the resource.
class IdentityProperties {
  /// The principal ID of resource identity.
  final pulumi.Input<String>? principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String>? tenantId;
  /// The identity type.
  final pulumi.Input<ResourceIdentityType>? type;
  /// The list of user identities associated with the resource. The user identity
  /// dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
  /// providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserIdentityProperties>>? userAssignedIdentities;

  /// Creates a new [IdentityProperties].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity
  IdentityProperties({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityProperties>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (ResourceIdentityType.fromValue(map['type']! as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserIdentityProperties>(map['userAssignedIdentities']!, (value) => UserIdentityProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

