// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the container group.
class ContainerGroupIdentity {
  /// The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  final pulumi.Input<ResourceIdentityType>? type;
  /// The list of user identities associated with the container group.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ContainerGroupIdentity].
  /// [type] The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  /// [userAssignedIdentities] The list of user identities associated with the container group.
  ContainerGroupIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ContainerGroupIdentity.fromMap(Map<String, dynamic> map) {
    return ContainerGroupIdentity(
      type: map['type'] == null ? null : (ResourceIdentityType.fromValue(map['type']! as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

