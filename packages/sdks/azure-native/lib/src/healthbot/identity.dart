// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the resource.
class Identity {
  /// The identity type. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the Azure Health Bot
  final pulumi.Input<ResourceIdentityType>? type;

  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The identity type. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the Azure Health Bot
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  Identity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(
        type,
        (value) => value.wireValue,
      ),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceIdentityType.fromValue(guardedValue as String),
        );
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
