// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_value_response.dart';

/// Identity for the virtual machine.
class GalleryIdentityResponse {
  /// The principal id of the gallery identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The AAD tenant id of the gallery identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the gallery. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove all identities from the gallery.
  final pulumi.Input<String>? type;
  /// The list of user identities associated with the gallery. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserAssignedIdentitiesValueResponse>>? userAssignedIdentities;

  /// Creates a new [GalleryIdentityResponse].
  /// [principalId] The principal id of the gallery identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The AAD tenant id of the gallery identity. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the gallery. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove all identities from the gallery.
  /// [userAssignedIdentities] The list of user identities associated with the gallery. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  GalleryIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentitiesValueResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentitiesValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryIdentityResponse.fromMap(Map<String, dynamic> map) {
    return GalleryIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedIdentitiesValueResponse>(map['userAssignedIdentities']!, (value) => UserAssignedIdentitiesValueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

