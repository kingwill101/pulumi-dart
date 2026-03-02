// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the resource.
class Identity {
  /// The identity type.
  final pulumi.Input<ResourceIdentityType>? type;
  /// The user assigned identities associated with the resource.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The identity type.
  /// [userAssignedIdentities] The user assigned identities associated with the resource.
  Identity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : (ResourceIdentityType.fromValue(map['type']! as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

