// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity for the resource.
class Identity {
  /// The identity type.
  final pulumi.Input<String> type;

  /// Gets or sets a list of key value pairs that describe the set of User Assigned identities that will be used with this volume group. The key is the ARM resource identifier of the identity.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The identity type.
  /// [userAssignedIdentities] Gets or sets a list of key value pairs that describe the set of User Assigned identities that will be used with this volume group. The key is the ARM resource identifier of the identity.
  Identity({required this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
