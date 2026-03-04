// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the NGroup.
class NGroupIdentity {
  /// The type of identity used for the NGroup. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the NGroup.
  final pulumi.Input<ResourceIdentityType>? type;

  /// The list of user identities associated with the NGroup.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [NGroupIdentity].
  /// [type] The type of identity used for the NGroup. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the NGroup.
  /// [userAssignedIdentities] The list of user identities associated with the NGroup.
  NGroupIdentity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(
        type,
        (value) => value.wireValue,
      ),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory NGroupIdentity.fromMap(Map<String, dynamic> map) {
    return NGroupIdentity(
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
