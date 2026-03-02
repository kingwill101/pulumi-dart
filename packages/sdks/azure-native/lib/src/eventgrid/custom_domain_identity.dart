// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity information for retrieving the certificate for the custom domain.
class CustomDomainIdentity {
  /// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  final pulumi.Input<String>? type;
  /// The user identity associated with the resource.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [CustomDomainIdentity].
  /// [type] The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  /// [userAssignedIdentity] The user identity associated with the resource.
  CustomDomainIdentity({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CustomDomainIdentity.fromMap(Map<String, dynamic> map) {
    return CustomDomainIdentity(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity'] as String).input(),
    );
  }
}

