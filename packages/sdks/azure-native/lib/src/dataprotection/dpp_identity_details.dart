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
  DppIdentityDetails({
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
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

