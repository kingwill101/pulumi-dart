// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity details
class DppIdentityDetails {
  /// The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  final pulumi.Input<String>? type;
  /// Gets or sets the user assigned identities.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [DppIdentityDetails].
  /// [type] The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  /// [userAssignedIdentities] Gets or sets the user assigned identities.
  const DppIdentityDetails({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory DppIdentityDetails.fromMap(Map<String, dynamic> map) {
    return DppIdentityDetails(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
