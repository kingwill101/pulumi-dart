// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_properties.dart';

/// Identity properties of the Api Management service resource.
class ApiManagementServiceIdentity {
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final String type;
  /// The list of user identities associated with the resource. The user identity
  /// dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
  /// providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserIdentityProperties>? userAssignedIdentities;

  /// Creates a new [ApiManagementServiceIdentity].
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity
  ApiManagementServiceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentityProperties, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ApiManagementServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ApiManagementServiceIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityProperties>(map['userAssignedIdentities'], (value) => UserIdentityProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

