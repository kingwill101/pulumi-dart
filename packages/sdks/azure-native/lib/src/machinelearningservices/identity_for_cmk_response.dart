// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity that will be used to access key vault for encryption at rest
class IdentityForCmkResponse {
  /// The ArmId of the user assigned identity that will be used to access the customer managed key vault
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [IdentityForCmkResponse].
  /// [userAssignedIdentity] The ArmId of the user assigned identity that will be used to access the customer managed key vault
  IdentityForCmkResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory IdentityForCmkResponse.fromMap(Map<String, dynamic> map) {
    return IdentityForCmkResponse(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

